import 'package:firebase_auth/firebase_auth.dart';
import 'package:practice_firebase/data/firebase.dart';
import 'package:practice_firebase/presenters/presenter.dart';
import 'package:practice_firebase/views/login_view.dart';

class LoginPresenter extends Presenter<LoginView> {
  final FirebaseService _firebaseService = FirebaseService();

  signInWithGoogle() async {
    final temp = await _firebaseService!.signInWithGoogle();
    getView().onSignInWithGoogle(temp);
  }
}
