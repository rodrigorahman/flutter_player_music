import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_player_music/app/models/music_model.dart';

part 'band_model.g.dart';

@JsonSerializable()
class BandModel {

  @JsonKey(name: "_id")
  String id;
  @JsonKey(name: "nome")
  String name;
  @JsonKey(name: "imagem")
  String image;
  @JsonKey(name: "categoria")
  String category;
  @JsonKey(name: "musicas")
  List<MusicModel> musics;
  
  BandModel({
    this.id,
    this.name,
    this.image,
    this.category,
    this.musics,
  });

  factory BandModel.fromJson(Map<String, dynamic> json) => _$BandModelFromJson(json);
  Map<String, dynamic> toJson() => _$BandModelToJson(this);
}
