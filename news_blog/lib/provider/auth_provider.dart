import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth_repository.dart';

class AuthProvider extends ChangeNotifier {
  AuthRepository repository = AuthRepository();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;

  Future<void> loginUser(String email, String password) async {
    try {
      await repository.login(email, password);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> register(String name, String email, String password) async {
    try {
      await repository.register(name, email, password);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();

      notifyListeners();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
