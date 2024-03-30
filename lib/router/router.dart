import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/tab_settings.dart';
import '../provider/accounts_notifier_provider.dart';
import '../provider/boot_state_provider.dart';
import '../provider/miauth_notifier_provider.dart';
import '../provider/receive_sharing_intent_provider.dart';
import '../provider/share_notifier_provider.dart';
import '../util/safe_parse_double.dart';
import '../view/page/about_misskey_page.dart';
import '../view/page/announcements_page.dart';
import '../view/page/antenna_page.dart';
import '../view/page/antennas_page.dart';
import '../view/page/authenticate_page.dart';
import '../view/page/avatar_decorations_page.dart';
import '../view/page/channel/channel_page.dart';
import '../view/page/channel/channels_page.dart';
import '../view/page/clip_page.dart';
import '../view/page/clips_page.dart';
import '../view/page/crop_image_page.dart';
import '../view/page/drive_file_page.dart';
import '../view/page/drive_page.dart';
import '../view/page/emoji_page.dart';
import '../view/page/explore/explore_page.dart';
import '../view/page/explore/explore_users_page.dart';
import '../view/page/favorites_page.dart';
import '../view/page/image_page.dart';
import '../view/page/list_page.dart';
import '../view/page/lists_page.dart';
import '../view/page/login_page.dart';
import '../view/page/misskey_games_page.dart';
import '../view/page/note_page.dart';
import '../view/page/notes_after_renotes_page.dart';
import '../view/page/notifications_page.dart';
import '../view/page/page/page_page.dart';
import '../view/page/page/pages_page.dart';
import '../view/page/play/plays_page.dart';
import '../view/page/post_page.dart';
import '../view/page/role_page.dart';
import '../view/page/search/search_page.dart';
import '../view/page/server/server_page.dart';
import '../view/page/settings/account_settings_page.dart';
import '../view/page/settings/accounts_page.dart';
import '../view/page/settings/appearance_page.dart';
import '../view/page/settings/behavior_page.dart';
import '../view/page/settings/blocked_users_page.dart';
import '../view/page/settings/drive_settings_page.dart';
import '../view/page/settings/emoji_picker_page.dart';
import '../view/page/settings/import_export_page.dart';
import '../view/page/settings/languages_page.dart';
import '../view/page/settings/mute_block_page.dart';
import '../view/page/settings/muted_users_page.dart';
import '../view/page/settings/privacy_page.dart';
import '../view/page/settings/profile_page.dart';
import '../view/page/settings/renote_muted_users_page.dart';
import '../view/page/settings/settings_page.dart';
import '../view/page/settings/tab_settings_page.dart';
import '../view/page/settings/tabs_page.dart';
import '../view/page/settings/theme_page.dart';
import '../view/page/share_page.dart';
import '../view/page/splash_page.dart';
import '../view/page/tag_page.dart';
import '../view/page/timeline_page.dart';
import '../view/page/timelines_page.dart';
import '../view/page/token_login_page.dart';
import '../view/page/user/followers_page.dart';
import '../view/page/user/following_page.dart';
import '../view/page/user/user_list_page.dart';
import '../view/page/user/user_page.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final bootState = ref.watch(bootStateProvider);
  final sharedFiles = defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS
      ? ref.watch(receiveSharingIntentProvider)
      : null;

  return GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const SplashPage(),
        redirect: (_, __) {
          if (!bootState.hasValue || bootState.value == null) {
            return null;
          } else {
            return '/timelines';
          }
        },
      ),
      GoRoute(
        path: '/about-misskey',
        builder: (_, __) => const AboutMisskeyPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (_, __) => const LoginPage(),
        routes: [
          GoRoute(
            path: 'authenticate',
            builder: (_, __) => const AuthenticatePage(),
          ),
          GoRoute(
            path: 'token',
            builder: (_, __) => const TokenLoginPage(),
          ),
        ],
      ),
      GoRoute(
        path: '/miauth',
        redirect: (_, __) async {
          final succeeded =
              await ref.read(miAuthNotifierProvider.notifier).check();
          if (succeeded) {
            return '/timelines';
          } else {
            return '/login/authenticate';
          }
        },
      ),
      GoRoute(
        path: '/settings',
        builder: (_, __) => const SettingsPage(),
        routes: [
          GoRoute(
            path: 'accounts',
            builder: (_, __) => const AccountsPage(),
            routes: [
              GoRoute(
                path: ':acct',
                builder: (_, state) => AccountSettingsPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                ),
                routes: [
                  GoRoute(
                    path: 'drive',
                    builder: (_, state) => DriveSettingsPage(
                      account:
                          Account.fromString(state.pathParameters['acct']!),
                    ),
                  ),
                  GoRoute(
                    path: 'emoji-picker',
                    builder: (_, state) => EmojiPickerPage(
                      account:
                          Account.fromString(state.pathParameters['acct']!),
                    ),
                  ),
                  GoRoute(
                    path: 'mute-block',
                    builder: (_, state) => MuteBlockPage(
                      account:
                          Account.fromString(state.pathParameters['acct']!),
                    ),
                    routes: [
                      GoRoute(
                        path: 'blocked',
                        builder: (_, state) => BlockedUsersPage(
                          account:
                              Account.fromString(state.pathParameters['acct']!),
                        ),
                      ),
                      GoRoute(
                        path: 'muted',
                        builder: (_, state) => MutedUsersPage(
                          account:
                              Account.fromString(state.pathParameters['acct']!),
                        ),
                      ),
                      GoRoute(
                        path: 'renote-muted',
                        builder: (_, state) => RenoteMutedUsersPage(
                          account:
                              Account.fromString(state.pathParameters['acct']!),
                        ),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'privacy',
                    builder: (_, state) => PrivacyPage(
                      account:
                          Account.fromString(state.pathParameters['acct']!),
                    ),
                  ),
                  GoRoute(
                    path: 'profile',
                    builder: (_, state) => ProfilePage(
                      account:
                          Account.fromString(state.pathParameters['acct']!),
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: 'appearance',
            builder: (_, __) => const AppearancePage(),
          ),
          GoRoute(
            path: 'behavior',
            builder: (_, __) => const BehaviorPage(),
          ),
          GoRoute(
            path: 'import-export',
            builder: (_, __) => const ImportExportPage(),
          ),
          GoRoute(
            path: 'language',
            builder: (_, __) => const LanguagesPage(),
          ),
          GoRoute(
            path: 'tab',
            builder: (_, __) => const TabsPage(),
            routes: [
              GoRoute(
                path: ':tabIndex',
                builder: (_, state) => TabSettingsPage(
                  tabIndex: int.parse(state.pathParameters['tabIndex']!),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'theme',
            builder: (_, __) => const ThemePage(),
          ),
        ],
      ),
      GoRoute(
        path: '/share',
        builder: (_, __) => const SharePage(),
      ),
      GoRoute(
        path: '/timelines',
        builder: (_, __) => const TimelinesPage(),
      ),
      GoRoute(
        path: '/:acct',
        builder: (_, __) => const TimelinesPage(),
        routes: [
          GoRoute(
            path: '@:username@:host',
            builder: (_, state) => UserPage(
              account: Account.fromString(state.pathParameters['acct']!),
              username: state.pathParameters['username'],
              host: state.pathParameters['host'],
            ),
          ),
          GoRoute(
            path: '@:username',
            builder: (_, state) => UserPage(
              account: Account.fromString(state.pathParameters['acct']!),
              username: state.pathParameters['username'],
            ),
            routes: [
              GoRoute(
                path: 'pages/:pageName',
                builder: (_, state) => PagePage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  pageName: state.pathParameters['pageName'],
                  username: state.pathParameters['username'],
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'announcements',
            builder: (_, state) => AnnouncementsPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'antennas',
            builder: (_, state) => AntennasPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: ':antennaId',
                builder: (_, state) => AntennaPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  antennaId: state.pathParameters['antennaId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'avatar-decorations',
            builder: (_, state) => AvatarDecorationsPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'channels',
            builder: (context, state) => ChannelsPage(
              account: Account.fromString(state.pathParameters['acct']!),
              onChannelTap: (channel) => context.push(
                '/${state.pathParameters['acct']}/channels/${channel.id}',
              ),
            ),
            routes: [
              GoRoute(
                path: ':channelId',
                builder: (_, state) => ChannelPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  channelId: state.pathParameters['channelId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'clips',
            builder: (_, state) => ClipsPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: ':clipId',
                builder: (_, state) => ClipPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  clipId: state.pathParameters['clipId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'drive',
            builder: (_, state) => DrivePage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: 'file/:fileId',
                builder: (_, state) => DriveFilePage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  fileId: state.pathParameters['fileId']!,
                  folderId: null,
                ),
              ),
              GoRoute(
                path: 'file/:folderId/:fileId',
                builder: (_, state) => DriveFilePage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  fileId: state.pathParameters['fileId']!,
                  folderId: state.pathParameters['folderId'],
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'emojis/:name',
            builder: (_, state) => EmojiPage(
              account: Account.fromString(state.pathParameters['acct']!),
              name: state.pathParameters['name']!,
            ),
          ),
          GoRoute(
            path: 'explore',
            builder: (_, state) => ExplorePage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: 'users',
                builder: (_, state) => ExploreUsersPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  host: state.uri.queryParameters['host'],
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'favorites',
            builder: (_, state) => FavoritesPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'games',
            builder: (_, state) => MisskeyGamesPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'image',
            builder: (_, state) => ImagePage(
              account: Account.fromString(state.pathParameters['acct']!),
              image: state.extra! as Uint8List,
            ),
            routes: [
              GoRoute(
                path: 'crop',
                builder: (_, state) => CropImagePage(
                  image: state.extra! as Uint8List,
                  aspectRatio:
                      safeParseDouble(state.uri.queryParameters['ratio']),
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'lists',
            builder: (_, state) => ListsPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: ':listId',
                builder: (_, state) => ListPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  listId: state.pathParameters['listId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'notes/:noteId',
            builder: (_, state) => NotePage(
              account: Account.fromString(state.pathParameters['acct']!),
              noteId: state.pathParameters['noteId']!,
            ),
            routes: [
              GoRoute(
                path: 'after-renotes',
                builder: (_, state) => NotesAfterRenotesPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  noteId: state.pathParameters['noteId']!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'notifications',
            builder: (_, state) => NotificationsPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'pages',
            builder: (_, state) => PagesPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: ':pageId',
                builder: (_, state) => PagePage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  pageId: state.pathParameters['pageId'],
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'play',
            builder: (_, state) => PlaysPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'post',
            builder: (_, state) => PostPage(
              initialAccount: Account.fromString(state.pathParameters['acct']!),
            ),
          ),
          GoRoute(
            path: 'roles/:roleId',
            builder: (_, state) => RolePage(
              account: Account.fromString(state.pathParameters['acct']!),
              roleId: state.pathParameters['roleId']!,
            ),
          ),
          GoRoute(
            path: 'search',
            builder: (_, state) => SearchPage(
              account: Account.fromString(state.pathParameters['acct']!),
              userId: state.uri.queryParameters['userId'],
              channelId: state.uri.queryParameters['channelId'],
            ),
          ),
          GoRoute(
            path: 'servers/:host',
            builder: (_, state) => ServerPage(
              account: Account.fromString(state.pathParameters['acct']!),
              host: state.pathParameters['host']!,
            ),
          ),
          GoRoute(
            path: 'tags/:tag',
            builder: (_, state) => TagPage(
              account: Account.fromString(state.pathParameters['acct']!),
              tag: state.pathParameters['tag']!,
            ),
          ),
          GoRoute(
            path: 'timeline/global',
            builder: (_, state) => TimelinePage(
              tabSettings: TabSettings.globalTimeline(
                Account.fromString(state.pathParameters['acct']!),
              ),
            ),
          ),
          GoRoute(
            path: 'timeline/local',
            builder: (_, state) => TimelinePage(
              tabSettings: TabSettings.localTimeline(
                Account.fromString(state.pathParameters['acct']!),
              ),
            ),
          ),
          GoRoute(
            path: 'users/:userId',
            builder: (_, state) => UserPage(
              account: Account.fromString(state.pathParameters['acct']!),
              userId: state.pathParameters['userId'],
            ),
            routes: [
              GoRoute(
                path: 'followers',
                builder: (_, state) => FollowersPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  userId: state.pathParameters['userId']!,
                ),
              ),
              GoRoute(
                path: 'following',
                builder: (_, state) => FollowingPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  userId: state.pathParameters['userId']!,
                ),
              ),
              GoRoute(
                path: 'list/:listId',
                builder: (_, state) => UserListPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  listId: state.pathParameters['listId']!,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (context, _) async {
      if (sharedFiles case AsyncData(value: final sharedFiles)) {
        final needRedirect = ref.read(shareNotifierProvider);
        if (needRedirect) {
          if (sharedFiles.length == 1) {
            if (sharedFiles.single.type == SharedMediaType.url) {
              final path =
                  await ref.read(shareNotifierProvider.notifier).redirect();
              if (path != null) {
                return path;
              }
            }
          }
          final accounts = ref.read(accountsNotifierProvider);
          if (accounts.length == 1) {
            final account = accounts.single;
            await ref.read(shareNotifierProvider.notifier).share(account);
            return '/$account/post';
          } else {
            return '/share';
          }
        }
      }
      return null;
    },
  );
}
