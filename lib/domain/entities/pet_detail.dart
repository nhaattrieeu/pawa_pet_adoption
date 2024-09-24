import 'package:equatable/equatable.dart';
import 'package:pawa_pet_adoption/domain/entities/owner.dart';

class PetDetail extends Equatable {
  const PetDetail({
    required this.petId,
    required this.name,
    required this.gender,
    required this.photos,
    required this.latitude,
    required this.longitude,
    required this.age,
    required this.size,
    required this.info,
    required this.favorite,
    required this.owner,
  });

  final String petId;
  final String name;
  final String gender;
  final List<String> photos;
  final double latitude;
  final double longitude;
  final int age;
  final String size;
  final String info;
  final bool favorite;
  final Owner owner;

  @override
  List<Object> get props => [
        petId,
        name,
        gender,
        photos,
        latitude,
        longitude,
        age,
        size,
        info,
        favorite,
        owner,
      ];
}
