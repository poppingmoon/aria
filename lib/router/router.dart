import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i18n/strings.g.dart';
import '../model/account.dart';
import '../model/tab_settings.dart';
import '../provider/boot_state_provider.dart';
import '../provider/message_opened_app_notifier_provider.dart';
import '../provider/miauth_notifier_provider.dart';
import '../provider/push_notification_notifier_provider.dart';
import '../provider/receive_sharing_intent_provider.dart';
import '../provider/share_notifier_provider.dart';
import '../util/safe_parse_double.dart';
import '../util/show_toast.dart';
import '../view/page/about_aria_page.dart';
import '../view/page/about_misskey_page.dart';
import '../view/page/announcements_page.dart';
import '../view/page/antenna_page.dart';
import '../view/page/antennas_page.dart';
import '../view/page/authenticate_page.dart';
import '../view/page/avatar_decorations_page.dart';
import '../view/page/channel/channel_page.dart';
import '../view/page/channel/channels_page.dart';
import '../view/page/chat/chat_page.dart';
import '../view/page/chat/chat_room_page.dart';
import '../view/page/clip_page.dart';
import '../view/page/clips_page.dart';
import '../view/page/crop_image_page.dart';
import '../view/page/drive_file_page.dart';
import '../view/page/drive_page.dart';
import '../view/page/emoji_page.dart';
import '../view/page/explore/explore_page.dart';
import '../view/page/explore/explore_users_page.dart';
import '../view/page/favorites_page.dart';
import '../view/page/gallery/gallery_edit_page.dart';
import '../view/page/gallery/gallery_page.dart';
import '../view/page/gallery/gallery_post_page.dart';
import '../view/page/image_page.dart';
import '../view/page/list/list_page.dart';
import '../view/page/list/lists_page.dart';
import '../view/page/login_page.dart';
import '../view/page/misskey_games_page.dart';
import '../view/page/note_page.dart';
import '../view/page/notes_after_renotes_page.dart';
import '../view/page/notifications_page.dart';
import '../view/page/page/page_page.dart';
import '../view/page/page/pages_page.dart';
import '../view/page/play/play_edit_page.dart';
import '../view/page/play/play_page.dart';
import '../view/page/play/plays_page.dart';
import '../view/page/post_page.dart';
import '../view/page/role_page.dart';
import '../view/page/scheduled_notes_page.dart';
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
import '../view/page/settings/note_display_page.dart';
import '../view/page/settings/notifications_settings_page.dart';
import '../view/page/settings/pinned_emojis_editor_page.dart';
import '../view/page/settings/privacy_page.dart';
import '../view/page/settings/profile_page.dart';
import '../view/page/settings/renote_muted_users_page.dart';
import '../view/page/settings/settings_page.dart';
import '../view/page/settings/tab_settings_page.dart';
import '../view/page/settings/tabs_page.dart';
import '../view/page/settings/theme_manage_page.dart';
import '../view/page/settings/theme_page.dart';
import '../view/page/settings/timeline_buttons_page.dart';
import '../view/page/share_page.dart';
import '../view/page/splash_page.dart';
import '../view/page/tag/tag_page.dart';
import '../view/page/timeline_page.dart';
import '../view/page/timelines_page.dart';
import '../view/page/token_login_page.dart';
import '../view/page/user/followers_page.dart';
import '../view/page/user/following_page.dart';
import '../view/page/user/user_list_page.dart';
import '../view/page/user/user_page.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final bootState = ref.watch(bootStateProvider);
  final sharedFiles =
      defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS
      ? ref.watch(receiveSharingIntentProvider)
      : null;
  final pushNotification = ref.watch(pushNotificationNotifierProvider);

  return GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (_, _) => const SplashPage(),
        redirect: (_, _) {
          if (!bootState.hasValue || bootState.value == null) {
            return null;
          } else {
            return '/timelines';
          }
        },
      ),
      GoRoute(path: '/about-aria', builder: (_, _) => const AboutAriaPage()),
      GoRoute(
        path: '/about-misskey',
        builder: (_, _) => const AboutMisskeyPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (_, state) =>
            LoginPage(query: state.uri.queryParameters['query']),
        routes: [
          GoRoute(
            path: 'authenticate',
            builder: (_, _) => const AuthenticatePage(),
          ),
          GoRoute(
            path: 'token',
            builder: (_, state) =>
                TokenLoginPage(query: state.uri.queryParameters['query']),
          ),
        ],
      ),
      GoRoute(
        path: '/miauth',
        redirect: (context, _) async {
          final result = await ref
              .read(miAuthNotifierProvider.notifier)
              .check();
          if (result.added case final added?) {
            showToast(
              context: context.mounted ? context : null,
              message: added ? t.aria.accountAdded : t.aria.accessTokenUpdated,
            );
          }
          if (result.success) {
            return '/timelines';
          } else {
            return '/login/authenticate';
          }
        },
      ),
      GoRoute(
        path: '/settings',
        builder: (_, _) => const SettingsPage(),
        routes: [
          GoRoute(
            path: 'accounts',
            builder: (_, _) => const AccountsPage(),
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
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                    ),
                  ),
                  GoRoute(
                    path: 'emoji-picker',
                    builder: (_, state) => PinnedEmojisEditorPage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                    ),
                  ),
                  GoRoute(
                    path: 'mute-block',
                    builder: (_, state) => MuteBlockPage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                    ),
                    routes: [
                      GoRoute(
                        path: 'blocked',
                        builder: (_, state) => BlockedUsersPage(
                          account: Account.fromString(
                            state.pathParameters['acct']!,
                          ),
                        ),
                      ),
                      GoRoute(
                        path: 'muted',
                        builder: (_, state) => MutedUsersPage(
                          account: Account.fromString(
                            state.pathParameters['acct']!,
                          ),
                        ),
                      ),
                      GoRoute(
                        path: 'renote-muted',
                        builder: (_, state) => RenoteMutedUsersPage(
                          account: Account.fromString(
                            state.pathParameters['acct']!,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'notifications',
                    builder: (_, state) => NotificationsSettingsPage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                    ),
                  ),
                  GoRoute(
                    path: 'privacy',
                    builder: (_, state) => PrivacyPage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                    ),
                  ),
                  GoRoute(
                    path: 'profile',
                    builder: (_, state) => ProfilePage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: 'appearance',
            builder: (_, _) => const AppearancePage(),
            routes: [
              GoRoute(
                path: 'buttons',
                builder: (_, _) => const TimelineButtonsPage(),
              ),
            ],
          ),
          GoRoute(path: 'behavior', builder: (_, _) => const BehaviorPage()),
          GoRoute(
            path: 'emoji-picker',
            builder: (_, _) => const EmojiPickerPage(),
          ),
          GoRoute(
            path: 'import-export',
            builder: (_, _) => const ImportExportPage(),
          ),
          GoRoute(path: 'language', builder: (_, _) => const LanguagesPage()),
          GoRoute(
            path: 'note-display',
            builder: (_, _) => const NoteDisplayPage(),
          ),
          GoRoute(
            path: 'tab',
            builder: (_, _) => const TabsPage(),
            routes: [
              GoRoute(path: 'new', builder: (_, _) => const TabSettingsPage()),
              GoRoute(
                path: ':tabId',
                builder: (_, state) =>
                    TabSettingsPage(tabId: state.pathParameters['tabId']),
              ),
            ],
          ),
          GoRoute(
            path: 'theme',
            builder: (_, _) => const ThemePage(),
            routes: [
              GoRoute(
                path: 'manage',
                builder: (_, _) => const ThemeManagePage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(path: '/share', builder: (_, _) => const SharePage()),
      GoRoute(path: '/timelines', builder: (_, _) => const TimelinesPage()),
      GoRoute(
        path: '/:acct',
        builder: (_, _) => const TimelinesPage(),
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
            path: 'chat',
            builder: (_, state) => ChatPage(
              account: Account.fromString(state.pathParameters['acct']!),
              initialIndex: switch (state.uri.fragment) {
                'invitations' => 1,
                'joining-rooms' => 2,
                'owned-rooms' => 3,
                _ => 0,
              },
            ),
            routes: [
              GoRoute(
                path: 'room/:roomId',
                builder: (_, state) => ChatRoomPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  roomId: state.pathParameters['roomId'],
                ),
              ),
              GoRoute(
                path: 'user/:userId',
                builder: (_, state) => ChatRoomPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  userId: state.pathParameters['userId'],
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
            path: 'gallery',
            builder: (_, state) => GalleryPage(
              account: Account.fromString(state.pathParameters['acct']!),
            ),
            routes: [
              GoRoute(
                path: 'new',
                builder: (_, state) => GalleryEditPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                ),
              ),
              GoRoute(
                path: ':postId',
                builder: (_, state) => GalleryPostPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  postId: state.pathParameters['postId']!,
                ),
                routes: [
                  GoRoute(
                    path: 'edit',
                    builder: (_, state) => GalleryEditPage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                      postId: state.pathParameters['postId'],
                    ),
                  ),
                ],
              ),
            ],
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
                  aspectRatio: safeParseDouble(
                    state.uri.queryParameters['ratio'],
                  ),
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
              GoRoute(
                path: 'edit',
                builder: (_, state) => PostPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  noteId: state.pathParameters['noteId'],
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
            routes: [
              GoRoute(
                path: 'new',
                builder: (_, state) => PlayEditPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                ),
              ),
              GoRoute(
                path: ':playId',
                builder: (_, state) => PlayPage(
                  account: Account.fromString(state.pathParameters['acct']!),
                  playId: state.pathParameters['playId']!,
                ),
                routes: [
                  GoRoute(
                    path: 'edit',
                    builder: (_, state) => PlayEditPage(
                      account: Account.fromString(
                        state.pathParameters['acct']!,
                      ),
                      playId: state.pathParameters['playId'],
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: 'post',
            builder: (_, state) => PostPage(
              account: Account.fromString(state.pathParameters['acct']!),
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
            path: 'scheduled-notes',
            builder: (_, state) => ScheduledNotesPage(
              account: Account.fromString(state.pathParameters['acct']!),
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
              initialIndex: state.uri.fragment == 'users' ? 1 : 0,
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
    redirect: (context, _) {
      if (!bootState.hasValue || bootState.value == null) {
        return null;
      }
      if (sharedFiles?.hasValue ?? false) {
        return Future(ref.read(shareNotifierProvider.notifier).redirect);
      }
      if (pushNotification.hasValue) {
        return Future(
          ref.read(messageOpenedAppNotifierProvider.notifier).redirect,
        );
      }
      return null;
    },
  );
}
