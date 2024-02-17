import 'package:corvit_weekend_eve/api/ApiInterface.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Register Screen',
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Username'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    ApiInterface().RegisterUser(
                      username.text,
                      email.text,
                      password.text
                    );
                  },
                  child: Text(
                    'Register',
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
