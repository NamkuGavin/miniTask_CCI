import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 13,
            width: 13,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black)),
        SizedBox(width: w * 0.005),
        Text("NamkuGavin",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, fontSize: 20)),
        SizedBox(width: w * 0.05),
        Text("Home",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 17)),
        SizedBox(width: w * 0.04),
        Text("CSS",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 17)),
        SizedBox(width: w * 0.04),
        Text("HTML",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 17)),
        SizedBox(width: w * 0.04),
        Text("Javascript",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 17)),
        Expanded(child: Container()),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50),
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                overlayColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: const BeveledRectangleBorder()),
            child: Text("Login",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 17))),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50),
                backgroundColor: Colors.black,
                shape: const BeveledRectangleBorder()),
            child: Text("Sign up",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 17))),
      ],
    );
  }
}
