import 'package:flutter/cupertino.dart';
import 'package:practice_firebase/screens/home_screen.dart';

class Navigate {
  BuildContext context;

  Navigate({required this.context});

  void goToHome(){
    Navigator.pushNamed(context, HomeScreen.route);
  }
}