import 'package:equatable/equatable.dart';

class Owner extends Equatable {
  final String id;
  final String fullName;
  final String profilePictureUrl;

  const Owner({
    required this.id,
    required this.fullName,
    required this.profilePictureUrl,
  });

  @override
  List<Object> get props => [id, fullName, profilePictureUrl];
}
