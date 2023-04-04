import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:practice_firebase/core/core.dart';
import 'package:practice_firebase/models/user_model.dart';

final logger = log('firebase');

final db = FirebaseFirestore.instance;

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
      return response;
    } on FirebaseAuthException catch (error) {
      logger(Level.error, 'sign in with google fail:: $error');
      return 'error';
    }
  }

  Future signOut() async {
    _auth.signOut();
  }

  Future getUsers() async {
    try {
      final user = await db.collection('user').get();
      return user.docs;
    } on FirebaseAuthException catch (error) {
      logger(Level.error, 'get users fail::: $error');
      throw Exception('get users fail');
    }
  }

  Future<bool> checkUserExist(UserModel user) async {
    final List users = await getUsers();
    return users.any((u) => u.data() == user.login);
  }

  Future<bool> addUser(UserModel user) async {
    try {
      await db.collection('user').doc(user.login).set(user.toFirestore());
      logger(Level.debug, 'add user success');
      return true;
    } on FirebaseException catch (e) {
      logger(Level.error, 'error add user--->>>$e');
      throw Exception('add user error::: $e');
    }
  }
}