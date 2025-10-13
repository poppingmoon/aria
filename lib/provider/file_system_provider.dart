import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_system_provider.g.dart';

@Riverpod(keepAlive: true)
FileSystem fileSystem(Ref ref) {
  return const LocalFileSystem();
}
