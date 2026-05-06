// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_draft.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNoteDraftCollection on Isar {
  IsarCollection<NoteDraft> get noteDrafts => this.collection();
}

const NoteDraftSchema = CollectionSchema(
  name: r'NoteDraft',
  id: 5405382344263480702,
  properties: {
    r'account': PropertySchema(id: 0, name: r'account', type: IsarType.string),
    r'channelId': PropertySchema(
      id: 1,
      name: r'channelId',
      type: IsarType.string,
    ),
    r'draft': PropertySchema(id: 2, name: r'draft', type: IsarType.string),
    r'isPinned': PropertySchema(id: 3, name: r'isPinned', type: IsarType.bool),
    r'renoteId': PropertySchema(
      id: 4,
      name: r'renoteId',
      type: IsarType.string,
    ),
    r'replyId': PropertySchema(id: 5, name: r'replyId', type: IsarType.string),
    r'tabId': PropertySchema(id: 6, name: r'tabId', type: IsarType.string),
  },

  estimateSize: _noteDraftEstimateSize,
  serialize: _noteDraftSerialize,
  deserialize: _noteDraftDeserialize,
  deserializeProp: _noteDraftDeserializeProp,
  idName: r'id',
  indexes: {
    r'account': IndexSchema(
      id: -5827943236100964141,
      name: r'account',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'account',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'tabId': IndexSchema(
      id: 1448272301247555965,
      name: r'tabId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tabId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _noteDraftGetId,
  getLinks: _noteDraftGetLinks,
  attach: _noteDraftAttach,
  version: '3.3.2',
);

int _noteDraftEstimateSize(
  NoteDraft object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.account.length * 3;
  {
    final value = object.channelId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.draft.length * 3;
  {
    final value = object.renoteId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.replyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tabId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _noteDraftSerialize(
  NoteDraft object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.account);
  writer.writeString(offsets[1], object.channelId);
  writer.writeString(offsets[2], object.draft);
  writer.writeBool(offsets[3], object.isPinned);
  writer.writeString(offsets[4], object.renoteId);
  writer.writeString(offsets[5], object.replyId);
  writer.writeString(offsets[6], object.tabId);
}

NoteDraft _noteDraftDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NoteDraft();
  object.account = reader.readString(offsets[0]);
  object.channelId = reader.readStringOrNull(offsets[1]);
  object.draft = reader.readString(offsets[2]);
  object.id = id;
  object.isPinned = reader.readBool(offsets[3]);
  object.renoteId = reader.readStringOrNull(offsets[4]);
  object.replyId = reader.readStringOrNull(offsets[5]);
  object.tabId = reader.readStringOrNull(offsets[6]);
  return object;
}

P _noteDraftDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _noteDraftGetId(NoteDraft object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _noteDraftGetLinks(NoteDraft object) {
  return [];
}

void _noteDraftAttach(IsarCollection<dynamic> col, Id id, NoteDraft object) {
  object.id = id;
}

extension NoteDraftQueryWhereSort
    on QueryBuilder<NoteDraft, NoteDraft, QWhere> {
  QueryBuilder<NoteDraft, NoteDraft, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NoteDraftQueryWhere
    on QueryBuilder<NoteDraft, NoteDraft, QWhereClause> {
  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> accountEqualTo(
    String account,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'account', value: [account]),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> accountNotEqualTo(
    String account,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account',
                lower: [],
                upper: [account],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account',
                lower: [account],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account',
                lower: [account],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account',
                lower: [],
                upper: [account],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> tabIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'tabId', value: [null]),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> tabIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'tabId',
          lower: [null],
          includeLower: false,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> tabIdEqualTo(
    String? tabId,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'tabId', value: [tabId]),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterWhereClause> tabIdNotEqualTo(
    String? tabId,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tabId',
                lower: [],
                upper: [tabId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tabId',
                lower: [tabId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tabId',
                lower: [tabId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'tabId',
                lower: [],
                upper: [tabId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension NoteDraftQueryFilter
    on QueryBuilder<NoteDraft, NoteDraft, QFilterCondition> {
  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'account',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'account',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> accountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'account', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  accountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'account', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'channelId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  channelIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'channelId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'channelId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  channelIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'channelId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'channelId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'channelId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'channelId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'channelId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'channelId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'channelId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> channelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'channelId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  channelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'channelId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'draft',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'draft',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'draft',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'draft',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'draft',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'draft',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'draft',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'draft',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'draft', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> draftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'draft', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> isPinnedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isPinned', value: value),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'renoteId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  renoteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'renoteId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'renoteId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'renoteId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'renoteId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'renoteId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'renoteId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'renoteId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'renoteId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'renoteId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> renoteIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'renoteId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  renoteIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'renoteId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'replyId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'replyId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'replyId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'replyId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'replyId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'replyId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'replyId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'replyId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'replyId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'replyId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> replyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'replyId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition>
  replyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'replyId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'tabId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'tabId'),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'tabId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'tabId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'tabId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'tabId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'tabId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'tabId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'tabId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'tabId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'tabId', value: ''),
      );
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterFilterCondition> tabIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'tabId', value: ''),
      );
    });
  }
}

extension NoteDraftQueryObject
    on QueryBuilder<NoteDraft, NoteDraft, QFilterCondition> {}

extension NoteDraftQueryLinks
    on QueryBuilder<NoteDraft, NoteDraft, QFilterCondition> {}

extension NoteDraftQuerySortBy on QueryBuilder<NoteDraft, NoteDraft, QSortBy> {
  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByDraft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draft', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByDraftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draft', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByIsPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPinned', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByIsPinnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPinned', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByRenoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'renoteId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByRenoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'renoteId', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByReplyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByReplyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyId', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByTabId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tabId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> sortByTabIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tabId', Sort.desc);
    });
  }
}

extension NoteDraftQuerySortThenBy
    on QueryBuilder<NoteDraft, NoteDraft, QSortThenBy> {
  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByChannelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByChannelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'channelId', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByDraft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draft', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByDraftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'draft', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByIsPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPinned', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByIsPinnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPinned', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByRenoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'renoteId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByRenoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'renoteId', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByReplyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByReplyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyId', Sort.desc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByTabId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tabId', Sort.asc);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QAfterSortBy> thenByTabIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tabId', Sort.desc);
    });
  }
}

extension NoteDraftQueryWhereDistinct
    on QueryBuilder<NoteDraft, NoteDraft, QDistinct> {
  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByAccount({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'account', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByChannelId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'channelId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByDraft({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'draft', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByIsPinned() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPinned');
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByRenoteId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'renoteId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByReplyId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'replyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoteDraft, NoteDraft, QDistinct> distinctByTabId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tabId', caseSensitive: caseSensitive);
    });
  }
}

extension NoteDraftQueryProperty
    on QueryBuilder<NoteDraft, NoteDraft, QQueryProperty> {
  QueryBuilder<NoteDraft, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NoteDraft, String, QQueryOperations> accountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'account');
    });
  }

  QueryBuilder<NoteDraft, String?, QQueryOperations> channelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'channelId');
    });
  }

  QueryBuilder<NoteDraft, String, QQueryOperations> draftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'draft');
    });
  }

  QueryBuilder<NoteDraft, bool, QQueryOperations> isPinnedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPinned');
    });
  }

  QueryBuilder<NoteDraft, String?, QQueryOperations> renoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'renoteId');
    });
  }

  QueryBuilder<NoteDraft, String?, QQueryOperations> replyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'replyId');
    });
  }

  QueryBuilder<NoteDraft, String?, QQueryOperations> tabIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tabId');
    });
  }
}
