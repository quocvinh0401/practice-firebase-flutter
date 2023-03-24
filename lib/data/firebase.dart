import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken
      );
      final response = await _auth.signInWithCredential(credential);
      print('googleSignInAccount--------->>>$googleSignInAccount');
      print('googleSignInAuthentication--------->>>$googleSignInAuthentication');
      print('credential--------->>>$credential');
      return response;


    } on FirebaseAuthException catch (error) {
      print(error.message);
      return 'error';
    }
  }
}