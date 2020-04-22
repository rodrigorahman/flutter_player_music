import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:flutter_player_music/app/repositories/band_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  final BandRepository bandRepository;

  _HomeControllerBase(this.bandRepository);

  @observable
  ObservableFuture<List<BandModel>> bandsFuture;

  @action
  void findAll() {
    bandsFuture = ObservableFuture(bandRepository.findAllBands());
  }

}
