import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_study_life_clone/dasboard.dart';
import 'package:my_study_life_clone/authentication/forgotpassword.dart';
import 'package:my_study_life_clone/authentication/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    labelText: "Email Address"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45)),
                    labelText: "Password"),
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(255, 70, 83, 206))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Dasboard()));
                      },
                      child: const Text.rich(TextSpan(text: "Login"))),
                  GestureDetector(
                    onTap: () {},
                    child: Text.rich(TextSpan(
                      text: "Forgot password",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Forgotpassword(),
                          ));
                        },
                    )),
                  )
                ],
              ),
              Text.rich(TextSpan(
                text: "Don't have an account?",
                children: <TextSpan>[
                  TextSpan(
                      text: "Sign up",
                      style: const TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Signup()));
                        })
                ],
              ))
            ],
          ),
        ));
  }
}
