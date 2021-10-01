import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable()
class Objeto{
  @JsonKey(name: "element_count") //este nombre espera de la API
  int contador=0;

  @JsonKey(name: "near_earth_objects") //este nombre espera de la API
  Map<String, List<Asteroid>> nearEarthObjects = Map();

  Objeto();
  factory Objeto.fromJson(Map<String,dynamic>json){
    return _$ObjetoFromJson(json);
  }

  Map<String,dynamic> toJson(){
    return _$ObjetoToJson(this);
  }
}

@JsonSerializable()
class Asteroid{
  String name=""; //este nombre espera de la API
  
  Asteroid();
  factory Asteroid.fromJson(Map<String,dynamic>json){
    return _$AsteroidFromJson(json);
  }

  Map<String,dynamic> toJson(){
    return _$AsteroidToJson(this);
  }
}