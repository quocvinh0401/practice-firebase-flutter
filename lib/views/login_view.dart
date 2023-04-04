import 'package:practice_firebase/models/user_model.dart';

abstract class LoginView {
  void onSignInWithGoogleSuccess(UserModel user);
  void onSignInWithGoogleError(error);
}
