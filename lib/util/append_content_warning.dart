String? appendContentWarning(String? original, String? additional) {
  if (original == null || original.isEmpty) {
    return additional;
  }
  if (additional == null || additional.isEmpty) {
    return original;
  }
  if (_includesWholeWord(original, additional)) {
    return original;
  }
  return '$original, $additional';
}

bool _includesWholeWord(String input, String target) {
  int start = 0;
  while (true) {
    final index = input.indexOf(target, start);
    if (index < 0) {
      return false;
    }
    start = index + target.length;
    if ((index == 0 || RegExp(r'\W').hasMatch(input[index - 1])) &&
        (start >= input.length || RegExp(r'\W').hasMatch(input[start]))) {
      return true;
    }
  }
}
