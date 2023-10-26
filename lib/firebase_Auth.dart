import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static final _firebaseAuth = FirebaseAuth.instance;
  static final firestore = FirebaseFirestore.instance;

  static Future<String> signup(
      {required String email, required String password}) async {
    String res = "something went wrong";
    try {
      UserCredential cred = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      // model.User user = model.User(
      //   email: email,
      //   password: password,
      //   uid: cred.user?.uid,
      // );
      
    } catch (e) {}
    return res;
  }
}
