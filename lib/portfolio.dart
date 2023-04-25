import 'package:flutter/material.dart';
import 'about.dart';
import 'educaton.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Education")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Skills")),
    ),
  ];
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
        appBar: AppBar(
            title: const Text("Touseef khattak"),
            actions: isMobile == false ? navItems : null,
        ),
        drawer: isMobile
            ? Drawer(
                child: ListView(
                  children: navItems,
                ),
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20,
                    children: [
                      About(),
                      Education(),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      );
    }
  }
