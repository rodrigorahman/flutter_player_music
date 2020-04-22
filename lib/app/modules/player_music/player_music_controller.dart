import 'package:audioplayer2/audioplayer2.dart';
import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:flutter_player_music/app/models/music_model.dart';
import 'package:flutter_player_music/app/repositories/band_repository.dart';
import 'package:mobx/mobx.dart';

part 'player_music_controller.g.dart';

class PlayerMusicController = _PlayerMusicControllerBase
    with _$PlayerMusicController;

abstract class _PlayerMusicControllerBase with Store {
  
  final BandRepository bandRepository;

  _PlayerMusicControllerBase(this.bandRepository);

  @observable
  BandModel bandModel;
  @observable
  ObservableFuture<BandModel> bandFuture;

  @action
  findBand(String id) async {
    bandFuture = ObservableFuture(bandRepository.findById(id));
    bandModel = await bandFuture;
  }

  @observable
  int faixa = 0;

  @computed
  MusicModel get music => bandModel != null ? bandModel.musics[faixa] : null;

  @observable
  AudioPlayer audioPlayer = AudioPlayer();

  @observable
  bool musicPlaying = false;

  @action
  Future<void> playMusic() async {
    if(music != null) {
      if(!musicPlaying) {
        await audioPlayer.play(music.url);
        musicPlaying = true;
      } else {
        musicPlaying = false;
        await audioPlayer.pause();
      }
    }
  }

}
