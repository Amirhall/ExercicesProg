import 'package:json_annotation/json_annotation.dart';
part 'representationNombre.g.dart';
@JsonSerializable()
@JsonSerializable()
@JsonSerializable()
class RepresentationNombre  {
  RepresentationNombre();

  String representation = '';
  String description = '';
  int nombre = 0;

  factory RepresentationNombre.fromJson(Map<String, dynamic> json) =>
      _$RepresentationNombreFromJson(json);

  Map<String, dynamic> toJson() => _$RepresentationNombreToJson(this);
}