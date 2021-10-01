// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Objeto _$ObjetoFromJson(Map<String, dynamic> json) => Objeto()
  ..contador = json['element_count'] as int
  ..nearEarthObjects = (json['near_earth_objects'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
        k,
        (e as List<dynamic>)
            .map((e) => Asteroid.fromJson(e as Map<String, dynamic>))
            .toList()),
  );

Map<String, dynamic> _$ObjetoToJson(Objeto instance) => <String, dynamic>{
      'element_count': instance.contador,
      'near_earth_objects': instance.nearEarthObjects,
    };

Asteroid _$AsteroidFromJson(Map<String, dynamic> json) =>
    Asteroid()..name = json['name'] as String;

Map<String, dynamic> _$AsteroidToJson(Asteroid instance) => <String, dynamic>{
      'name': instance.name,
    };
