import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  // Agregando ChangeNotifier
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return UserModel(uid: result.user?.uid, email: result.user?.email);
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  Future<UserModel?> signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return UserModel(uid: result.user?.uid, email: result.user?.email);
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
