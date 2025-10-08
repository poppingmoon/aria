import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_system_provider.g.dart';

@riverpod
FileSystem fileSystem(Ref ref) {
  return const LocalFileSystem();
}
