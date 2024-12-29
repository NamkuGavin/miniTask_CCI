import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_task_cci/widget/appBar_home.dart';
import 'package:mini_task_cci/widget/home_leftside.dart';
import 'package:mini_task_cci/widget/home_rightside.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              color: const Color(0xFFE2E2D8),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppBarHome(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1.5),
                    ),
                    child: Text("Artikel",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  ),
                  Text("Menguasai Dasar-Dasar\nFront-End Development",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 50, fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Text(
                      "Mulailah perjalanan Anda dalam web development dengan mempelajari dasar-dasar yang penting.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  SizedBox(
                      width: 1000,
                      child: Image.asset("assets/image/imgHome.jpg")),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeLeftSide(),
                      HomeRightside(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
