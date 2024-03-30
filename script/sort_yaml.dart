import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:yaml/yaml.dart';

Map<String, dynamic> sortYaml(YamlMap input) {
  return Map.fromEntries(
    input
        .map(
          (key, value) => MapEntry(
            key as String,
            value is YamlMap ? sortYaml(value) : value,
          ),
        )
        .entries
        .sorted((a, b) => a.key.compareTo(b.key)),
  );
}

List<String> dumpYaml(Map<String, dynamic> input, [int level = 0]) {
  final indent = '  ' * level;
  final lines = <String>[];
  for (final e in input.entries) {
    final key = e.key;
    final value = e.value;
    if (value is String) {
      lines.add('$indent$key: ${jsonEncode(value)}');
    } else {
      lines.add('$indent$key:');
      lines.addAll(dumpYaml(value as Map<String, dynamic>, level + 1));
    }
  }
  return lines;
}

void main(List<String> arguments) {
  final file = File(arguments.first);
  final input = loadYaml(file.readAsStringSync()) as YamlMap;
  final lines = dumpYaml(sortYaml(input));
  file.writeAsStringSync('${lines.join('\n')}\n');
}
