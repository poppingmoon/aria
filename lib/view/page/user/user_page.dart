import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../hook/confetti_controller_hook.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';
import 'user_clips.dart';
import 'user_featured.dart';
import 'user_files.dart';
import 'user_gallery.dart';
import 'user_home.dart';
import 'user_lists.dart';
import 'user_notes.dart';
import 'user_pages.dart';
import 'user_plays.dart';
import 'user_reactions.dart';

class UserPage extends HookConsumerWidget {
  const UserPage({
    super.key,
    required this.account,
    this.userId,
    this.username,
    this.host,
  });

  final Account account;
  final String? userId;
  final String? username;
  final String? host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref
        .watch(
          userNotifierProvider(
            account,
            userId: this.userId,
            username: username,
            host: host,
          ),
        )
        .value;
    final userId = this.userId ?? user?.id;
    final now = DateTime.now();
    final isLocal = user != null && user.host == null;
    final isReactionsVisibile =
        user != null &&
        (user.publicReactions ||
            (!account.isGuest &&
                account.username == user.username &&
                user.host == null));
    final birthday = switch (user?.birthday) {
      final birthday? => DateTime.tryParse(birthday),
      _ => null,
    };

    return Stack(
      children: [
        DefaultTabController(
          length: userId != null
              ? 3 + (isLocal ? 6 : 0) + (isReactionsVisibile ? 1 : 0)
              : 1,
          child: Scaffold(
            appBar: AppBar(
              title: user != null
                  ? UsernameWidget(account: account, user: user)
                  : null,
              bottom: user != null
                  ? TabBar(
                      tabs: [
                        Tab(text: t.misskey.overview),
                        Tab(text: t.misskey.notes),
                        if (isLocal) Tab(text: t.misskey.featured),
                        Tab(text: t.misskey.files),
                        if (isReactionsVisibile) Tab(text: t.misskey.reactions),
                        if (isLocal) ...[
                          Tab(text: t.misskey.clips),
                          Tab(text: t.misskey.lists),
                          Tab(text: t.misskey.pages),
                          const Tab(text: 'Play'),
                          Tab(text: t.misskey.gallery),
                        ],
                      ],
                      isScrollable: isLocal,
                      tabAlignment: isLocal ? TabAlignment.center : null,
                    )
                  : null,
              actions: [
                if (user is MeDetailed)
                  IconButton(
                    tooltip: t.misskey.qr,
                    onPressed: () => context.push('/$account/qr'),
                    icon: const Icon(Icons.qr_code_rounded),
                  ),
                if (userId != null)
                  IconButton(
                    tooltip: t.misskey.menu,
                    onPressed: () => showUserSheet(
                      context: context,
                      account: account,
                      userId: userId,
                      disableHeader: true,
                    ),
                    icon: const Icon(Icons.more_vert),
                  ),
              ],
            ),
            body: TabBarView(
              children: [
                UserHome(
                  account: account,
                  userId: this.userId,
                  username: username,
                  host: host,
                ),
                if (userId != null) ...[
                  UserNotes(account: account, userId: userId),
                  if (isLocal) UserFeatured(account: account, userId: userId),
                  UserFiles(account: account, userId: userId),
                  if (isReactionsVisibile)
                    UserReactions(account: account, userId: userId),
                  if (isLocal) ...[
                    UserClips(account: account, userId: userId),
                    UserLists(account: account, userId: userId),
                    UserPages(account: account, userId: userId),
                    UserPlays(account: account, userId: userId),
                    UserGallery(account: account, userId: userId),
                  ],
                ],
              ],
            ),
          ),
        ),
        if ((birthday?.day == now.day && birthday?.month == now.month) ||
            (birthday?.day == 29 &&
                birthday?.month == 2 &&
                now.day == 1 &&
                now.month == 3 &&
                (now.year % 4 != 0 ||
                    (now.year % 100 == 0 && now.year % 400 != 0)))) ...[
          const _Confetti(delay: Duration.zero),
          ...Iterable.generate(10, (_) => const _Confetti()),
          const _Confetti(delay: Duration(seconds: 5)),
        ],
      ],
    );
  }
}

class _Confetti extends HookConsumerWidget {
  const _Confetti({this.delay});

  final Duration? delay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enableHapticFeedback = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableHapticFeedback,
      ),
    );
    final numberOfParticles = useRef(0);
    final controller = useConfettiController(
      duration: const Duration(seconds: 1),
      particleStatsCallback: (stats) {
        if (enableHapticFeedback &&
            stats.numberOfParticles > numberOfParticles.value) {
          HapticFeedback.lightImpact();
        }
        numberOfParticles.value = stats.numberOfParticles;
      },
    );
    final alignment = useMemoized(
      () => Alignment(switch (Random().nextDouble() - 0.5) {
        final x when x < 0 => x * 1.5 - 0.2,
        final x => x * 1.5 + 0.2,
      }, pow(Random().nextDouble(), 1.5) * 2.0 - 1.0),
    );
    useEffect(() {
      final delay =
          this.delay ??
          const Duration(seconds: 5) *
              min(Random().nextDouble(), Random().nextDouble());
      Future.delayed(delay, () => controller.play());
      Future.delayed(
        delay * 2 + const Duration(seconds: 1),
        () => controller.play(),
      );
      return;
    }, []);

    return Align(
      alignment: alignment,
      child: ConfettiWidget(
        confettiController: controller,
        blastDirectionality: BlastDirectionality.explosive,
        numberOfParticles: 50,
        maxBlastForce: 80.0,
      ),
    );
  }
}
