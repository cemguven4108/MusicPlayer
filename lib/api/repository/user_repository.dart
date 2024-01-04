
import 'package:music_player/models/user_model.dart';

class UserRepository {
  Future<bool> addUser(UserModel userModel) {
    return Future(() => true);
  }

  Future<bool> updateUser(UserModel userModel) {
    return Future(() => true);
  }

  Future<bool> deleteUser(String id) {
    return Future(() => true);
  }

  Future<UserModel?> getUser(String id) {
    return Future(() => null);
  }

  Future<List<UserModel>> getAllUsers() {
    return Future(() => []);
  }
}