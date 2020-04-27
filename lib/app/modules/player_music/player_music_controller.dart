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

  @observable
  Duration audioDuration;

  @observable
  Duration timeToMusic = Duration();

  @computed
  String get totalTime => audioDuration != null ? '${audioDuration.inMinutes.remainder(60)}:${audioDuration.inSeconds.remainder(60)}' : '0:00';

  @computed
  String get timeProgress => timeToMusic != null ? '${timeToMusic.inMinutes.remainder(60)}:${timeToMusic.inSeconds.remainder(60)}' : '0:00';

  @computed
  double get progressDuration => audioDuration != null ? (audioDuration.inSeconds > 0 ? timeToMusic.inSeconds.toDouble() * 1 / audioDuration.inSeconds : 0) : 0;

  @action
  changeTimeToMusic(Duration d) {
    timeToMusic = d;
  }

  @action
  setTimeMusic(double value) {
    audioPlayer.seek(value * audioDuration.inSeconds);
  }

  @action
  Future<void> playMusic() async {
    if(music != null) {
      if(!musicPlaying) {
        await audioPlayer.play(music.url);
        Future.delayed(Duration(milliseconds: 200), () => audioDuration = audioPlayer.duration);
        musicPlaying = true;
      } else {
        musicPlaying = false;
        await audioPlayer.pause();
      }
    }
  }

  @action
  void stopMusic() {
    audioPlayer.stop();
    musicPlaying = false;
    timeToMusic = Duration.zero;
  }

  @computed
  bool get hasNextMusic => bandModel != null ? bandModel.musics.length > faixa : false;

  @action
  nextMusic() {
    faixa++;
    stopMusic();
    audioDuration = Duration.zero;
  }

  @computed
  bool get hasPreviousMusic => bandModel != null ? faixa > 0 : false;

  @action
  previousMusic() {
    faixa--;
    stopMusic();
    audioDuration = Duration.zero;
  }

}
