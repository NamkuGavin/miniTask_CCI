import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_task_cci/widget/appBar_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: const Color(0xFFE2E2D8),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                AppBarHome(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
