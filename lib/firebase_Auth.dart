import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wise_care/model.dart' as model;

class AuthServices {
  static final _firebaseAuth = FirebaseAuth.instance;
  static final firestore = FirebaseFirestore.instance;

  static Future<String> signup(
      {required String email, required String password}) async {
    String res = "something went wrong";
    try {
      UserCredential cred = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      model.User user = model.User(
        email: email,
        password: password,
        uid: cred.user?.uid,
      );
      res = 'success';
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  static Future<String> login(
      {required String email, required String password}) async {
        String res='Something went wrong';
        try {
      // ignore: no_leading_underscores_for_local_identifiers, unused_local_variable
      UserCredential _cred = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
          res='success';
    } catch (e) {
      res = e.toString();
    }
    return res;
      }
}
