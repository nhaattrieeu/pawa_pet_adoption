import 'package:equatable/equatable.dart';

class Pet extends Equatable {
  final String petId;
  final String name;
  final String gender;
  final List<String> photos;
  final double latitude;
  final double longitude;

  const Pet({
    required this.petId,
    required this.name,
    required this.gender,
    required this.photos,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object> get props => [petId, name, gender, photos, latitude, longitude];
}
