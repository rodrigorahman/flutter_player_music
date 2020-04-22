// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'band_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BandModel _$BandModelFromJson(Map<String, dynamic> json) {
  return BandModel(
    id: json['_id'] as String,
    name: json['nome'] as String,
    image: json['imagem'] as String,
    category: json['categoria'] as String,
    musics: (json['musicas'] as List)
        ?.map((e) =>
            e == null ? null : MusicModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BandModelToJson(BandModel instance) => <String, dynamic>{
      '_id': instance.id,
      'nome': instance.name,
      'imagem': instance.image,
      'categoria': instance.category,
      'musicas': instance.musics,
    };
