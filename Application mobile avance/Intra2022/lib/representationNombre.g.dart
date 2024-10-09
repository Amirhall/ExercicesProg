// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'representationNombre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepresentationNombre _$RepresentationNombreFromJson(
        Map<String, dynamic> json) =>
    RepresentationNombre()
      ..representation = json['representation'] as String
      ..description = json['description'] as String
      ..nombre = (json['nombre'] as num).toInt();

Map<String, dynamic> _$RepresentationNombreToJson(
        RepresentationNombre instance) =>
    <String, dynamic>{
      'representation': instance.representation,
      'description': instance.description,
      'nombre': instance.nombre,
    };
