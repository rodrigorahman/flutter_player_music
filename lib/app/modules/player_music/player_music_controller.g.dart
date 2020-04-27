// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_music_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayerMusicController on _PlayerMusicControllerBase, Store {
  Computed<MusicModel> _$musicComputed;

  @override
  MusicModel get music =>
      (_$musicComputed ??= Computed<MusicModel>(() => super.music)).value;
  Computed<String> _$totalTimeComputed;

  @override
  String get totalTime =>
      (_$totalTimeComputed ??= Computed<String>(() => super.totalTime)).value;
  Computed<String> _$timeProgressComputed;

  @override
  String get timeProgress =>
      (_$timeProgressComputed ??= Computed<String>(() => super.timeProgress))
          .value;

  final _$bandModelAtom = Atom(name: '_PlayerMusicControllerBase.bandModel');

  @override
  BandModel get bandModel {
    _$bandModelAtom.context.enforceReadPolicy(_$bandModelAtom);
    _$bandModelAtom.reportObserved();
    return super.bandModel;
  }

  @override
  set bandModel(BandModel value) {
    _$bandModelAtom.context.conditionallyRunInAction(() {
      super.bandModel = value;
      _$bandModelAtom.reportChanged();
    }, _$bandModelAtom, name: '${_$bandModelAtom.name}_set');
  }

  final _$bandFutureAtom = Atom(name: '_PlayerMusicControllerBase.bandFuture');

  @override
  ObservableFuture<BandModel> get bandFuture {
    _$bandFutureAtom.context.enforceReadPolicy(_$bandFutureAtom);
    _$bandFutureAtom.reportObserved();
    return super.bandFuture;
  }

  @override
  set bandFuture(ObservableFuture<BandModel> value) {
    _$bandFutureAtom.context.conditionallyRunInAction(() {
      super.bandFuture = value;
      _$bandFutureAtom.reportChanged();
    }, _$bandFutureAtom, name: '${_$bandFutureAtom.name}_set');
  }

  final _$faixaAtom = Atom(name: '_PlayerMusicControllerBase.faixa');

  @override
  int get faixa {
    _$faixaAtom.context.enforceReadPolicy(_$faixaAtom);
    _$faixaAtom.reportObserved();
    return super.faixa;
  }

  @override
  set faixa(int value) {
    _$faixaAtom.context.conditionallyRunInAction(() {
      super.faixa = value;
      _$faixaAtom.reportChanged();
    }, _$faixaAtom, name: '${_$faixaAtom.name}_set');
  }

  final _$audioPlayerAtom =
      Atom(name: '_PlayerMusicControllerBase.audioPlayer');

  @override
  AudioPlayer get audioPlayer {
    _$audioPlayerAtom.context.enforceReadPolicy(_$audioPlayerAtom);
    _$audioPlayerAtom.reportObserved();
    return super.audioPlayer;
  }

  @override
  set audioPlayer(AudioPlayer value) {
    _$audioPlayerAtom.context.conditionallyRunInAction(() {
      super.audioPlayer = value;
      _$audioPlayerAtom.reportChanged();
    }, _$audioPlayerAtom, name: '${_$audioPlayerAtom.name}_set');
  }

  final _$musicPlayingAtom =
      Atom(name: '_PlayerMusicControllerBase.musicPlaying');

  @override
  bool get musicPlaying {
    _$musicPlayingAtom.context.enforceReadPolicy(_$musicPlayingAtom);
    _$musicPlayingAtom.reportObserved();
    return super.musicPlaying;
  }

  @override
  set musicPlaying(bool value) {
    _$musicPlayingAtom.context.conditionallyRunInAction(() {
      super.musicPlaying = value;
      _$musicPlayingAtom.reportChanged();
    }, _$musicPlayingAtom, name: '${_$musicPlayingAtom.name}_set');
  }

  final _$audioDurationAtom =
      Atom(name: '_PlayerMusicControllerBase.audioDuration');

  @override
  Duration get audioDuration {
    _$audioDurationAtom.context.enforceReadPolicy(_$audioDurationAtom);
    _$audioDurationAtom.reportObserved();
    return super.audioDuration;
  }

  @override
  set audioDuration(Duration value) {
    _$audioDurationAtom.context.conditionallyRunInAction(() {
      super.audioDuration = value;
      _$audioDurationAtom.reportChanged();
    }, _$audioDurationAtom, name: '${_$audioDurationAtom.name}_set');
  }

  final _$timeToMusicAtom =
      Atom(name: '_PlayerMusicControllerBase.timeToMusic');

  @override
  Duration get timeToMusic {
    _$timeToMusicAtom.context.enforceReadPolicy(_$timeToMusicAtom);
    _$timeToMusicAtom.reportObserved();
    return super.timeToMusic;
  }

  @override
  set timeToMusic(Duration value) {
    _$timeToMusicAtom.context.conditionallyRunInAction(() {
      super.timeToMusic = value;
      _$timeToMusicAtom.reportChanged();
    }, _$timeToMusicAtom, name: '${_$timeToMusicAtom.name}_set');
  }

  final _$findBandAsyncAction = AsyncAction('findBand');

  @override
  Future findBand(String id) {
    return _$findBandAsyncAction.run(() => super.findBand(id));
  }

  final _$playMusicAsyncAction = AsyncAction('playMusic');

  @override
  Future<void> playMusic() {
    return _$playMusicAsyncAction.run(() => super.playMusic());
  }

  final _$_PlayerMusicControllerBaseActionController =
      ActionController(name: '_PlayerMusicControllerBase');

  @override
  dynamic changeTimeToMusic(Duration d) {
    final _$actionInfo =
        _$_PlayerMusicControllerBaseActionController.startAction();
    try {
      return super.changeTimeToMusic(d);
    } finally {
      _$_PlayerMusicControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'bandModel: ${bandModel.toString()},bandFuture: ${bandFuture.toString()},faixa: ${faixa.toString()},audioPlayer: ${audioPlayer.toString()},musicPlaying: ${musicPlaying.toString()},audioDuration: ${audioDuration.toString()},timeToMusic: ${timeToMusic.toString()},music: ${music.toString()},totalTime: ${totalTime.toString()},timeProgress: ${timeProgress.toString()}';
    return '{$string}';
  }
}
