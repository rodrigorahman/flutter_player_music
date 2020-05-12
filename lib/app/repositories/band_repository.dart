import 'package:dio/dio.dart';
import 'package:flutter_player_music/app/models/band_model.dart';

class BandRepository {

  Future<List<BandModel>> findAllBands() {
    var dio = Dio();
    return dio
      .get('http://192.168.15.100:3000/bandas')
      .then((res) => res.data.map<BandModel>((b) => BandModel.fromJson(b)).toList());
  }

  Future<BandModel> findById(String id) {
    return Dio()
      .get('http://192.168.15.100:3000/bandas/$id')
      .then((res) => BandModel.fromJson(res.data));
  }

}