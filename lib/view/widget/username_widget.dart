import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/user_extension.dart';
import '../../model/account.dart';
import 'mfm.dart';

class const UsernameWidget({
  super.key,
  required final Account account,
  final List<InlineSpan>? leadingSpans,
  required final User user,
  final List<InlineSpan>? trailingSpans,
  final Widget Function(BuildContext context, InlineSpan span)? builder,
  final TextStyle? style,
  final TextAlign? textAlign,
  final TextOverflow? overflow,
  final int? maxLines,
}) extends StatelessWidget {
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
      author: user,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
