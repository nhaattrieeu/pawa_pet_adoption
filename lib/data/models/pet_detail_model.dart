import 'package:pawa_pet_adoption/data/models/owner_model.dart';
import 'package:pawa_pet_adoption/domain/entities/pet_detail.dart';

class PetDetailModel extends PetDetail {
  const PetDetailModel({
    required super.petId,
    required super.name,
    required super.gender,
    required super.photos,
    required super.latitude,
    required super.longitude,
    required super.age,
    required super.size,
    required super.info,
    required super.favorite,
    required super.owner,
  });

  factory PetDetailModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> photos = json["photos"];
    var listPhoto = photos.map((e) => e.toString()).toList();

    return PetDetailModel(
      petId: json["petId"],
      name: json["name"],
      gender: json["gender"],
      photos: listPhoto,
      latitude: json["latitude"],
      longitude: json["longitude"],
      age: json["age"],
      size: json["size"],
      info: json["info"],
      favorite: json["favorite"],
      owner: OwnerModel.fromJson(json["owner"]),
    );
  }
}
