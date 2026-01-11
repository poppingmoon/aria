// https://github.com/omichelsen/compare-versions

use std::{cmp::Ordering, str::FromStr};

use nom::{
    Finish, IResult, Parser,
    branch::alt,
    bytes::complete::is_a,
    character::complete::{alphanumeric1, char, digit1, one_of},
    combinator::{all_consuming, map, map_res, opt, recognize},
    error::Error,
    multi::{many_m_n, many0, many1, separated_list1},
    sequence::{delimited, preceded},
};

#[derive(PartialEq, Eq)]
enum VersionSegment {
    Number(usize),
    Wildcard,
}

impl PartialOrd for VersionSegment {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for VersionSegment {
    fn cmp(&self, other: &Self) -> Ordering {
        match (self, other) {
            (VersionSegment::Number(l), VersionSegment::Number(r)) => l.cmp(r),
            _ => Ordering::Equal,
        }
    }
}

#[derive(PartialEq, Eq)]
pub struct Version {
    segments: Vec<VersionSegment>,
    pre: Option<String>,
}

impl Version {
    pub fn major(major: usize) -> Self {
        Version {
            segments: vec![VersionSegment::Number(major)],
            pre: None,
        }
    }
}

impl PartialOrd for Version {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        match self.segments.partial_cmp(&other.segments) {
            Some(core::cmp::Ordering::Equal) => {}
            ord => return ord,
        }
        self.pre.partial_cmp(&other.pre)
    }
}

impl Ord for Version {
    fn cmp(&self, other: &Self) -> Ordering {
        let mut l = self.segments.iter();
        let mut r = other.segments.iter();
        while let Some(l) = l.next() {
            match l.cmp(r.next().unwrap_or(&VersionSegment::Number(0))) {
                Ordering::Equal => {}
                ordering => return ordering,
            }
        }
        while let Some(r) = r.next() {
            match VersionSegment::Number(0).cmp(r) {
                Ordering::Equal => {}
                ordering => return ordering,
            }
        }

        match (&self.pre, &other.pre) {
            (Some(l), Some(r)) => {
                let mut l = l.split('.');
                let mut r = r.split('.');
                while let Some(l) = l.next() {
                    if let Some(r) = r.next() {
                        if let Ok(l) = l.parse::<usize>()
                            && let Ok(r) = r.parse::<usize>()
                        {
                            match l.cmp(&r) {
                                Ordering::Equal => {}
                                ordering => return ordering,
                            }
                        } else {
                            match l.cmp(r) {
                                Ordering::Equal => {}
                                ordering => return ordering,
                            }
                        }
                    } else {
                        if let Ok(l) = l.parse::<usize>() {
                            match l.cmp(&0) {
                                Ordering::Equal => {}
                                ordering => return ordering,
                            }
                        } else {
                            match l.cmp("0") {
                                Ordering::Equal => {}
                                ordering => return ordering,
                            }
                        }
                    }
                }
                while let Some(r) = r.next() {
                    if let Ok(r) = r.parse::<usize>() {
                        match 0.cmp(&r) {
                            Ordering::Equal => {}
                            ordering => return ordering,
                        }
                    } else {
                        match "0".cmp(r) {
                            Ordering::Equal => {}
                            ordering => return ordering,
                        }
                    }
                }
                Ordering::Equal
            }
            (Some(_), None) => Ordering::Less,
            (None, Some(_)) => Ordering::Greater,
            (None, None) => Ordering::Equal,
        }
    }
}

impl FromStr for Version {
    type Err = Error<String>;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        fn parse_version_part(s: &str) -> IResult<&str, VersionSegment> {
            alt((
                map(one_of::<&str, &str, Error<_>>("Xx*"), |_| {
                    VersionSegment::Wildcard
                }),
                map_res(digit1, |d: &str| d.parse().map(VersionSegment::Number)),
            ))
            .parse(s)
        }

        Ok(all_consuming(delimited(
            opt(is_a("Vv^~<>=")),
            (
                parse_version_part,
                many_m_n(
                    0,
                    3,
                    preceded(char::<&str, Error<&str>>('.'), parse_version_part),
                ),
                opt(preceded(
                    char('-'),
                    recognize((
                        many1(alt((alphanumeric1, recognize(char('-'))))),
                        many0((char('.'), alt((alphanumeric1, recognize(char('-')))))),
                    )),
                )),
            ),
            opt((
                char('+'),
                separated_list1(char('.'), many1(alt((alphanumeric1, recognize(char('-')))))),
            )),
        ))
        .parse(s)
        .finish()
        .map(|(_, (major, mut parts, prerelease))| {
            parts.insert(0, major);
            Version {
                segments: parts,
                pre: prerelease.map(ToString::to_string),
            }
        })?)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn single_segment_versions() {
        assert_eq!(
            Version::from_str("10")
                .unwrap()
                .cmp(&Version::from_str("9").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("10")
                .unwrap()
                .cmp(&Version::from_str("10").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("9")
                .unwrap()
                .cmp(&Version::from_str("10").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn two_segment_versions() {
        assert_eq!(
            Version::from_str("10.8")
                .unwrap()
                .cmp(&Version::from_str("10.4").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("10.1")
                .unwrap()
                .cmp(&Version::from_str("10.1").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("10.1")
                .unwrap()
                .cmp(&Version::from_str("10.2").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn three_segment_versions() {
        assert_eq!(
            Version::from_str("10.1.8")
                .unwrap()
                .cmp(&Version::from_str("10.0.4").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("10.0.1")
                .unwrap()
                .cmp(&Version::from_str("10.0.1").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("10.1.1")
                .unwrap()
                .cmp(&Version::from_str("10.2.2").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("11.0.10")
                .unwrap()
                .cmp(&Version::from_str("11.0.2").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("11.0.2")
                .unwrap()
                .cmp(&Version::from_str("11.0.10").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn four_segment_versions() {
        assert_eq!(
            Version::from_str("1.0.0.0")
                .unwrap()
                .cmp(&Version::from_str("1").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.2.3.4")
                .unwrap()
                .cmp(&Version::from_str("1.2.3.4").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.2.3.4")
                .unwrap()
                .cmp(&Version::from_str("1.2.3.04").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("v1.2.3.4")
                .unwrap()
                .cmp(&Version::from_str("01.2.3.4").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.2.3.4")
                .unwrap()
                .cmp(&Version::from_str("1.2.3.5").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.2.3.5")
                .unwrap()
                .cmp(&Version::from_str("1.2.3.4").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0.0-alpha")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-alpha").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0.0-alpha")
                .unwrap()
                .cmp(&Version::from_str("1.0.0.0-beta").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn different_segment_versions() {
        assert_eq!(
            Version::from_str("11.1.10")
                .unwrap()
                .cmp(&Version::from_str("11.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.1.1")
                .unwrap()
                .cmp(&Version::from_str("1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("01.1.0")
                .unwrap()
                .cmp(&Version::from_str("1.01").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0")
                .unwrap()
                .cmp(&Version::from_str("1").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("10.0.0")
                .unwrap()
                .cmp(&Version::from_str("10.114").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0")
                .unwrap()
                .cmp(&Version::from_str("1.4.1").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn pre_release_versions() {
        assert_eq!(
            Version::from_str("1.0.0-alpha.1")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-alpha").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0-alpha")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-alpha.1").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-alpha.1")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-alpha.beta").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-alpha.beta")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta.2").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta.2")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta.11").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta.11")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-rc.1").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-rc.1")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-alpha")
                .unwrap()
                .cmp(&Version::from_str("1").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta.11")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta.10")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta.9").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta.10")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta.90").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn ignore_build_metadata() {
        assert_eq!(
            Version::from_str("1.4.0-build.3928")
                .unwrap()
                .cmp(&Version::from_str("1.4.0-build.3928+sha.a8d9d4f").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.4.0-build.3928+sha.b8dbdb0")
                .unwrap()
                .cmp(&Version::from_str("1.4.0-build.3928+sha.a8d9d4f").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0-alpha+001")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-alpha").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta+exp.sha.5114f85")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta+exp.sha.999999").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0+20130313144700")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0+20130313144700")
                .unwrap()
                .cmp(&Version::from_str("2.0.0").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.0+20130313144700")
                .unwrap()
                .cmp(&Version::from_str("1.0.1+11234343435").unwrap()),
            Ordering::Less,
        );
        assert_eq!(
            Version::from_str("1.0.1+1")
                .unwrap()
                .cmp(&Version::from_str("1.0.1+2").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0+a-a")
                .unwrap()
                .cmp(&Version::from_str("1.0.0+a-b").unwrap()),
            Ordering::Equal,
        );
    }

    #[test]
    fn ignore_leading_v() {
        assert_eq!(
            Version::from_str("v1.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("v1.0.0")
                .unwrap()
                .cmp(&Version::from_str("v1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.0")
                .unwrap()
                .cmp(&Version::from_str("v1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("v1.0.0-alpha")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-alpha").unwrap()),
            Ordering::Equal,
        );
    }

    #[test]
    fn ignore_leading_0() {
        assert_eq!(
            Version::from_str("01.0.0")
                .unwrap()
                .cmp(&Version::from_str("1").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("01.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.01.0")
                .unwrap()
                .cmp(&Version::from_str("1.1.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.03")
                .unwrap()
                .cmp(&Version::from_str("1.0.3").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("1.0.03-alpha")
                .unwrap()
                .cmp(&Version::from_str("1.0.3-alpha").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("v01.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("v01.0.0")
                .unwrap()
                .cmp(&Version::from_str("2.0.0").unwrap()),
            Ordering::Less,
        );
    }

    #[test]
    fn wildcards() {
        assert_eq!(
            Version::from_str("3")
                .unwrap()
                .cmp(&Version::from_str("3.x.x").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.3")
                .unwrap()
                .cmp(&Version::from_str("3.x.x").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.3.3")
                .unwrap()
                .cmp(&Version::from_str("3.x.x").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.x.x")
                .unwrap()
                .cmp(&Version::from_str("3.3.3").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.3.3")
                .unwrap()
                .cmp(&Version::from_str("3.X.X").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.3.3")
                .unwrap()
                .cmp(&Version::from_str("3.3.x").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.3.3")
                .unwrap()
                .cmp(&Version::from_str("3.*.*").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.3.3")
                .unwrap()
                .cmp(&Version::from_str("3.3.*").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("3.0.3")
                .unwrap()
                .cmp(&Version::from_str("3.0.*").unwrap()),
            Ordering::Equal,
        );
        assert_eq!(
            Version::from_str("0.7.x")
                .unwrap()
                .cmp(&Version::from_str("0.6.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("0.7.x")
                .unwrap()
                .cmp(&Version::from_str("0.6.0-asdf").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("0.7.x")
                .unwrap()
                .cmp(&Version::from_str("0.6.2").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("0.7.x")
                .unwrap()
                .cmp(&Version::from_str("0.7.0-asdf").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.2.*")
                .unwrap()
                .cmp(&Version::from_str("1.1.3").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.2.*")
                .unwrap()
                .cmp(&Version::from_str("1.1.9999").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.2.x")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.2.x")
                .unwrap()
                .cmp(&Version::from_str("1.1.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.2.x")
                .unwrap()
                .cmp(&Version::from_str("1.1.3").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.*.*")
                .unwrap()
                .cmp(&Version::from_str("1.0.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.*.*")
                .unwrap()
                .cmp(&Version::from_str("1.1.3").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.x.x")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.x.x")
                .unwrap()
                .cmp(&Version::from_str("1.1.3").unwrap()),
            Ordering::Greater,
        );
    }

    #[test]
    fn invalid_input() {
        assert!(Version::from_str("6.3.").is_err());
        assert!(Version::from_str("1.2.3a").is_err());
        assert!(Version::from_str("1.2.-3a").is_err());
    }

    #[test]
    fn compare_versions() {
        assert_eq!(
            Version::from_str("0.1.20")
                .unwrap()
                .cmp(&Version::from_str("0.1.5").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("0.6.1-1")
                .unwrap()
                .cmp(&Version::from_str("0.6.1-0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1")
                .unwrap()
                .cmp(&Version::from_str("0.0.0-beta").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1")
                .unwrap()
                .cmp(&Version::from_str("0.2.3").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1")
                .unwrap()
                .cmp(&Version::from_str("0.2.4").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0")
                .unwrap()
                .cmp(&Version::from_str("0.0.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0")
                .unwrap()
                .cmp(&Version::from_str("0.1.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0")
                .unwrap()
                .cmp(&Version::from_str("0.1.2").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0")
                .unwrap()
                .cmp(&Version::from_str("0.0.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0")
                .unwrap()
                .cmp(&Version::from_str("0.0.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0")
                .unwrap()
                .cmp(&Version::from_str("0.2.3").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.0.0-beta.2")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("1.2.2")
                .unwrap()
                .cmp(&Version::from_str("1.2.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2")
                .unwrap()
                .cmp(&Version::from_str("1.0.0-beta").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2")
                .unwrap()
                .cmp(&Version::from_str("1.9999.9999").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.0.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.1.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.2.9").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.0.0")
                .unwrap()
                .cmp(&Version::from_str("1.9999.9999").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.3")
                .unwrap()
                .cmp(&Version::from_str("2.2.1").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.3")
                .unwrap()
                .cmp(&Version::from_str("2.2.2").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.4")
                .unwrap()
                .cmp(&Version::from_str("2.3.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("2.4")
                .unwrap()
                .cmp(&Version::from_str("2.3.5").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("3.2.1")
                .unwrap()
                .cmp(&Version::from_str("2.3.2").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("3.2.1")
                .unwrap()
                .cmp(&Version::from_str("3.2.0").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("v0.5.4-pre")
                .unwrap()
                .cmp(&Version::from_str("0.5.4-alpha").unwrap()),
            Ordering::Greater,
        );
        assert_eq!(
            Version::from_str("v3.2.1")
                .unwrap()
                .cmp(&Version::from_str("v2.3.2").unwrap()),
            Ordering::Greater,
        );
    }

    #[test]
    fn human_readable_compare_versions() {
        assert_eq!(
            Version::from_str("10.1.8").unwrap() > Version::from_str("10.0.4").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.8").unwrap() >= Version::from_str("10.0.4").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.0.1").unwrap() == Version::from_str("10.0.1").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.0.1").unwrap() == Version::from_str("10.1.*").unwrap(),
            false
        );
        assert_eq!(
            Version::from_str("3.3.3").unwrap() < Version::from_str("3.x.x").unwrap(),
            false
        );
        assert_eq!(
            Version::from_str("3.3.3").unwrap() >= Version::from_str("3.x.x").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() < Version::from_str("10.2.2").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() < Version::from_str("10.0.2").unwrap(),
            false
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() <= Version::from_str("10.2.2").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() <= Version::from_str("10.1.1").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() <= Version::from_str("10.0.2").unwrap(),
            false
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() >= Version::from_str("10.0.2").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() >= Version::from_str("10.1.1").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() >= Version::from_str("10.2.2").unwrap(),
            false
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() != Version::from_str("10.2.2").unwrap(),
            true
        );
        assert_eq!(
            Version::from_str("10.1.1").unwrap() != Version::from_str("10.1.1").unwrap(),
            false
        );
    }
}
