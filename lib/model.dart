import 'package:cloud_firestore/cloud_firestore.dart';

class User {
 
  String? email;
  String? mobile;
  String? uid;

  User(
      {
      this.email,
      this.mobile, 
      this.uid,
     });
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
    
      uid: snapshot["uid"],
      email: snapshot["email"],
      mobile: snapshot["mobile"],
    );
  }
  Map<String, dynamic> toJson() => {
 
        "email": email,
        "mobile": mobile,
        "uid": uid,
      };
}