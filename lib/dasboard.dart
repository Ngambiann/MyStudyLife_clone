import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_study_life_clone/authentication/login.dart';
import 'package:my_study_life_clone/drawers/exams.dart';
import 'package:my_study_life_clone/drawers/schedule.dart';
import 'package:my_study_life_clone/drawers/settings.dart';

import 'package:my_study_life_clone/drawers/tasks.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3);
    _controller.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: const [
            Tab(
                icon: Icon(Icons.calendar_month_rounded),
                child: Tooltip(message: "today")),
            Tab(
                icon: Icon(Icons.check_box_rounded),
                child: Tooltip(
                  message: "today",
                )),
            Tab(
              icon: Icon(Icons.today_rounded),
              child: Tooltip(
                message: "exams",
              ),
            )
          ],
          controller: _controller,
        ),
        backgroundColor: Colors.indigoAccent,
        title: const Text("Dashboard"),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              tooltip: "open",
              icon: const Icon(Icons.menu_rounded),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: TabBarView(
        clipBehavior: Clip.hardEdge,
        controller: _controller,
        children: const [
          Column(
            children: [Text('Friday,August 16')],
          ),
          Column(
            children: [
              Text('Due Tommorow'),
            ],
          ),
          Column(children: [
            Icon(Icons.today_rounded),
          ])
        ],
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
                  MaterialPageRoute(
                    builder: (context) => const Tasks(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Exams"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Exams()));
              },
            ),
            ListTile(
              title: const Text("Schedule"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Schedule()));
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()));
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

  _handleTabSelection() {
    setState(() {});
  }
}
