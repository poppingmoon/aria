final enRegex1 = RegExp('(?<=n)a', caseSensitive: false);
final enRegex2 = RegExp('(?<=morn)ing', caseSensitive: false);
final enRegex3 = RegExp('(?<=every)one', caseSensitive: false);
final koRegex1 = RegExp('[나-낳]');
final koRegex2 =
    RegExp(r'(다$)|(다(?=\.))|(다(?= ))|(다(?=!))|(다(?=\?))', multiLine: true);
final koRegex3 = RegExp(r'(야(?=\?))|(야$)|(야(?= ))', multiLine: true);

String nyaize(String text) {
  return text
      // ja-JP
      .replaceAll('な', 'にゃ')
      .replaceAll('ナ', 'ニャ')
      .replaceAll('ﾅ', 'ﾆｬ')
      // en-US
      .replaceAllMapped(enRegex1, (x) => x[0] == 'A' ? 'YA' : 'ya')
      .replaceAllMapped(enRegex2, (x) => x[0] == 'ING' ? 'YAN' : 'yan')
      .replaceAllMapped(enRegex3, (x) => x[0] == 'ONE' ? 'NYAN' : 'nyan')
      // ko-KR
      .replaceAllMapped(
        koRegex1,
        (match) => String.fromCharCode(
          match[0]!.codeUnitAt(0) + '냐'.codeUnitAt(0) - '나'.codeUnitAt(0),
        ),
      )
      .replaceAll(koRegex2, '다냥')
      .replaceAll(koRegex3, '냥');
}
