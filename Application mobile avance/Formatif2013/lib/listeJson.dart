import 'package:json_annotation/json_annotation.dart';
part 'listeJson.g.dart';
@JsonSerializable()
@JsonSerializable()
@JsonSerializable()
class Chanson  {
  Chanson ();

  String titre = '';
  int id = 0;

  factory Chanson.fromJson(Map<String, dynamic> json) =>
      _$ChansonFromJson(json);

  Map<String, dynamic> toJson() => _$ChansonToJson(this);
}