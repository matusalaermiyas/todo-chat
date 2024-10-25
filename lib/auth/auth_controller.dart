// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';

// 🌎 Project imports:
import 'package:todo_chat/utils/logger.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  // Login method
  Future<UserCredential> signUp(
      {required String email, required String password}) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      AppLogger.log("Error while signin user");
      AppLogger.log(e);

      return throw Exception(e.message);
    }
  }

  // Register method
  Future<UserCredential> signIn(
      {required String email, required String password}) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return throw Exception(e.message);
    }
  }

  // Logout
  Future<void> signOut() async {
    return await _auth.signOut();
  }
}
