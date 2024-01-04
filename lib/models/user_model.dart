import 'package:uuid/uuid.dart';

class UserModel {
  final String id;
  final String fullName;
  final String image;

  UserModel({
    required this.fullName,
    required this.image,
  }) : id = const Uuid().v4();
}
