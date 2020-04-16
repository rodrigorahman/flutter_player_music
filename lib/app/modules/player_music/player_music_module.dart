import 'package:flutter_player_music/app/modules/player_music/player_music_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_page.dart';

class PlayerMusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayerMusicController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PlayerMusicPage(url: args.data)),
      ];

  static Inject get to => Inject<PlayerMusicModule>.of();
}
