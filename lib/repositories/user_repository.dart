import 'package:feedtheneed/model/profile.dart';

import '/api/user_api.dart';
import '../model/user.dart';

class UserRepository {
  Future<bool> registerUser(User user) async {
    return await UserAPI().registerUser(user);
  }

  Future<bool> login(String email, String password) {
    return UserAPI().login(email, password);
  }

  Future<UserProfile?> getUserDetails() async {
    return await UserAPI().getUserDetails();
  }

  Future<bool> updateUserProfile(UserProfile userProfile) async {
    return await UserAPI().updateUserProfile(userProfile);
  }
}
