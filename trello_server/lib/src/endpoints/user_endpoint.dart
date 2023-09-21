import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class UserEndPoint extends Endpoint {
  // create user

  Future<User> createUser(Session session, User user) async {
    await User.insert(session, user);
    return user;
  }

  // return User Id

  Future<User?> getUserById(Session session, {required int userId}) async {
    User? user = await User.findById(session, userId);
    return user;
  }
}
