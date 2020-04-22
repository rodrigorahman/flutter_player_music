
import 'package:json_annotation/json_annotation.dart';

part 'music_model.g.dart';

@JsonSerializable()
class MusicModel {

  @JsonKey(name: '_id')
  String id;
  @JsonKey(name: 'nome')
  String name;
  String url;

  MusicModel({
    this.id,
    this.name,
    this.url,
  });
  
  factory MusicModel.fromJson(Map<String, dynamic> json) => _$MusicModelFromJson(json);
  Map<String,dynamic> toJson() => _$MusicModelToJson(this);
}
