import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;
  bool _obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign up'),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email or Username',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    obscureText: _obscureText,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: FaIcon(
                        _obscureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                        color: Colors.grey[700],
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    obscureText: _obscureTextConfirm,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureTextConfirm = !_obscureTextConfirm;
                        });
                      },
                      icon: FaIcon(
                        _obscureTextConfirm ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                        color: Colors.grey[700],
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Sign up'),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
