import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String? login;
  final String? password;
  final String? nickname;
  final String? avatar;

  UserModel({this.password, this.avatar, this.nickname, this.login});

  factory UserModel.fromFirestore(
      UserCredential user
      ){
    return UserModel(
      login: user.additionalUserInfo?.profile?['email'],
      nickname: user.additionalUserInfo?.profile?['name'],
      avatar: user.additionalUserInfo?.profile?['picture']
    );
  }

  Map<String, dynamic> toFirestore(){
    return {
      if (login != null) 'login': login,
      if (password != null) 'password': password,
      if (nickname != null) 'nickname': nickname,
      if (avatar != null) 'avatar': avatar,
    };
  }
}