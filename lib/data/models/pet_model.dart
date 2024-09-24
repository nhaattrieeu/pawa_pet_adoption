import '../../domain/entities/pet.dart';

class PetModel extends Pet {
  const PetModel({
    required super.petId,
    required super.name,
    required super.gender,
    required super.photos,
    required super.latitude,
    required super.longitude,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> photos = json["photos"];
    var listPhoto = photos.map((e) => e.toString()).toList();

    return PetModel(
      petId: json["petId"],
      name: json["name"],
      gender: json["gender"],
      photos: listPhoto,
      latitude: json["latitude"],
      longitude: json["longitude"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "petId": petId,
      "name": name,
      "gender": gender,
      "photos": photos,
      "latitude": latitude,
      "longitude": longitude,
    };
  }
}
