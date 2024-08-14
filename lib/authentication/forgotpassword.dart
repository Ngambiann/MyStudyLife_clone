import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recover Account"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(padding:const  EdgeInsets.all(15),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "EmailAddress"
            ),
          ),
          
            ElevatedButton(onPressed:(){} ,
             child:const Text.rich(TextSpan(text: "Send Recovery Email")))
        ],
      ),
      ),
    );
  }
}
