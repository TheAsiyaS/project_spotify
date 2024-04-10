import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  set isSignedIn(bool value) {
    _isSignedIn = value;
    notifyListeners();
  }

  Future<void> login() async {
    isSignedIn = true;

    try {
      final user = await googleSignIn.signIn();
      if (user == null) {
        isSignedIn = false;
        return;
      }

      final googleAuth = await user.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      // Handle any sign-in errors here
      print('Sign-in error: $e');
      isSignedIn = false;
    }
  }

  Future<void> logout() async {
    try {
      // Rest of your code
      await googleSignIn.disconnect();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      // Handle any sign-out errors here
      print('Sign-out error: $e');
    }
  }

  @override
  void dispose() {
    // Clean up resources here
    super.dispose();
  }
}
