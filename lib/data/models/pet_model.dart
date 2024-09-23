import '../../domain/entities/pet.dart';

class PetModel extends Pet {
  const PetModel({
    required super.petId,
    required super.name,
    required super.gender,
    required super.latitude,
    required super.longitude,
    required super.photo,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) {
    return PetModel(
      petId: json["petId"],
      name: json["name"],
      gender: json["gender"],
      photo: json["photo"],
      latitude: json["latitude"],
      longitude: json["longitude"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "petId": petId,
      "name": name,
      "gender": gender,
      "photo": photo,
      "latitude": latitude,
      "longitude": longitude,
    };
  }
}
