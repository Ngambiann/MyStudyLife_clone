import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_study_life_clone/authentication/login.dart';
import 'package:my_study_life_clone/drawers/tasks.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu_rounded),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              child: Text.rich(
                TextSpan(
                    text: "My Account",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Login()));
                      }),
              ),
            ),
            ListTile(
              title: const Text("Dashboard"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Tasks"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Tasks()));
                
              },
            ),
            ListTile(
              title: const Text("Exams"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Schedule"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
              iconColor: Colors.deepPurple,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Tasks()));
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add_card),
      ),
    );
  }
}
