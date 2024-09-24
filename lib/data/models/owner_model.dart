import 'package:pawa_pet_adoption/domain/entities/owner.dart';

class OwnerModel extends Owner {
  const OwnerModel({
    required super.id,
    required super.fullName,
    required super.profilePictureUrl,
  });

  factory OwnerModel.fromJson(Map<String, dynamic> json) {
    return OwnerModel(
      id: json["id"],
      fullName: json["fullName"],
      profilePictureUrl: json["profilePictureUrl"],
    );
  }
}
