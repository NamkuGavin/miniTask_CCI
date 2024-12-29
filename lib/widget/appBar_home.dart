import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_task_cci/widget/navbar_item.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({super.key});

  @override
  State<AppBarHome> createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  String? _selectedText;

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
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20)),
        SizedBox(width: w * 0.05),
        NavbarItem(
          text: "Home",
          routeName: "/",
          isSelected: _selectedText == "Home",
          onSelected: () {
            setState(() {
              _selectedText = "Home";
            });
          },
        ),
        SizedBox(width: w * 0.04),
        NavbarItem(
          text: "CSS",
          routeName: "/CSS",
          isSelected: _selectedText == "CSS",
          onSelected: () {
            setState(() {
              _selectedText = "CSS";
            });
          },
        ),
        SizedBox(width: w * 0.04),
        NavbarItem(
          text: "HTML",
          routeName: "/HTML",
          isSelected: _selectedText == "HTML",
          onSelected: () {
            setState(() {
              _selectedText = "HTML";
            });
          },
        ),
        SizedBox(width: w * 0.04),
        NavbarItem(
          text: "Javascript",
          routeName: "/JS",
          isSelected: _selectedText == "JS",
          onSelected: () {
            setState(() {
              _selectedText = "JS";
            });
          },
        ),
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
