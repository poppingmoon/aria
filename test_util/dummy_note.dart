import 'package:misskey_dart/misskey_dart.dart';

import 'dummy_user_lite.dart';

final dummyNote = Note(
  id: '',
  createdAt: DateTime(0),
  user: dummyUserLite,
  userId: '',
  reactions: {},
  fileIds: [],
  files: [],
);
