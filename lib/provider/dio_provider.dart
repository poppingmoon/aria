import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constant/version.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return Dio(
    BaseOptions(headers: {HttpHeaders.userAgentHeader: 'Aria/$version'}),
  );
}
