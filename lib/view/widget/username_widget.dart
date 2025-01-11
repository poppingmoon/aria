import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/user_extension.dart';
import '../../model/account.dart';
import 'mfm.dart';

class UsernameWidget extends StatelessWidget {
  const UsernameWidget({
    super.key,
    required this.account,
    this.leadingSpans,
    required this.user,
    this.trailingSpans,
    this.builder,
    this.style,
    this.overflow,
    this.maxLines,
  });

  final Account account;
  final List<InlineSpan>? leadingSpans;
  final User user;
  final List<InlineSpan>? trailingSpans;
  final Widget Function(BuildContext context, InlineSpan span)? builder;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Mfm(
      account: account,
      leadingSpans: leadingSpans,
      text: user.nameOrUsername,
      trailingSpans: trailingSpans,
      builder: builder,
      simple: true,
      style: style,
      emojis: user.emojis,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
