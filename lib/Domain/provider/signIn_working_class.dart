import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final GoogleSignIn googleSignIn = GoogleSignIn.instance;
  bool _isGoogleInitialized = false;
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  set isSignedIn(bool value) {
    _isSignedIn = value;
    notifyListeners();
  }

  Future<void> _initializeGoogleSignIn() async {
    if (_isGoogleInitialized) {
      return;
    }
    await googleSignIn.initialize();
    _isGoogleInitialized = true;
  }

  Future<bool> login() async {
    isSignedIn = true;
    log('result login inside login: -------------$_isSignedIn');

    try {
      await _initializeGoogleSignIn();
      GoogleSignInAccount? user;
      if (googleSignIn.supportsAuthenticate()) {
        user = await googleSignIn.authenticate();
      } else {
        final lightweightAuth = googleSignIn.attemptLightweightAuthentication();
        user = lightweightAuth == null ? null : await lightweightAuth;
      }
      if (user == null) {
        isSignedIn = false;
        log('result login inside try>if : -------------$_isSignedIn');

        return isSignedIn;
      }
      final googleAuth = user.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: null,
        idToken: googleAuth.idToken,
      );
      log('result login inside try above credential : -------------$_isSignedIn');

      await FirebaseAuth.instance.signInWithCredential(credential);
      log('result login inside try below credential : -------------$_isSignedIn');

      return isSignedIn;
    } catch (e) {
      // Handle any sign-in errors here
      log('Sign-in error: $e');
      log('result login inside catch above assin : -------------$_isSignedIn');

      isSignedIn = false;
      log('result login inside catch below assin : -------------$_isSignedIn');

      return isSignedIn;
    }
  }

  Future<void> logout() async {
    try {
      // Rest of your code
      await _initializeGoogleSignIn();
      await googleSignIn.disconnect();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      // Handle any sign-out errors here
      log('Sign-out error: $e');
    }
  }

  @override
  void dispose() {
    // Clean up resources here
    super.dispose();
  }
}
