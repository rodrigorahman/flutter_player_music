import 'package:flutter_player_music/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/modules/home/home_page.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/player', module: PlayerMusicModule())
      ];

  static Inject get to => Inject<HomeModule>.of();
}
