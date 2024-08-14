import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:my_study_life_clone/authentication/login.dart';
import 'package:my_study_life_clone/dasboard.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                labelText: ("Email address"),
                prefixIcon: const Icon(Icons.email)
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                    labelText: "password",
                    prefixIcon: const Icon(Icons.remove_red_eye_sharp)),
                obscureText: true),
                const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                    labelText: " confirm password",
                    prefixIcon: const Icon(Icons.remove_red_eye_sharp)),
                obscureText: true),
                const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 136, 109, 182))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Dasboard(),
                  ));
                },
                child: const Text.rich(TextSpan(text: "Sign Up"))),
            Text.rich(
              TextSpan(
                text: "Already have an account?",
                children: <TextSpan>[
                  TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
