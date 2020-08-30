import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference usersCollection =
      Firestore.instance.collection('users');

  Future<void> updateUserData(
      {String pseudo,
      String compteur,
      String telephone,
      String email,
      String naissance,
      String sexe}) async {
    return await usersCollection.document(uid).setData({
      'pseudo': pseudo,
      'compteur': compteur,
      'telephone': telephone,
      'email': email,
      'naissance': naissance,
      'sexe': sexe,
    });
  }
}
