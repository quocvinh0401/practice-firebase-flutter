import 'package:firebase_auth/firebase_auth.dart';
import 'package:practice_firebase/data/firebase.dart';
import 'package:practice_firebase/models/user_model.dart';
import 'package:practice_firebase/presenters/presenter.dart';
import 'package:practice_firebase/views/login_view.dart';

class LoginPresenter extends Presenter<LoginView> {
  final _firebaseService = FirebaseService();

  signInWithGoogle() async {
    try {
      final res = await _firebaseService!.signInWithGoogle();
      final user = UserModel.fromFirestore(res);

      bool checkUserExist = await _firebaseService.checkUserExist(user);
      if (!checkUserExist) await _firebaseService.addUser(user);

      getView().onSignInWithGoogleSuccess(user);
    } on Exception catch (e) {
      getView().onSignInWithGoogleError(e);
    }
  }
}
