// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listeJson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chanson _$ChansonFromJson(Map<String, dynamic> json) => Chanson()
  ..titre = json['titre'] as String
  ..id = (json['id'] as num).toInt();

Map<String, dynamic> _$ChansonToJson(Chanson instance) => <String, dynamic>{
      'titre': instance.titre,
      'id': instance.id,
    };
