import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRightside extends StatelessWidget {
  const HomeRightside({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Table of content",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text("Introduction",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text("Software and Tools",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text("Other resource",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text("Conclusion",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Divider(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text("Author",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/me.jpg')),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Gavin Arasyi",
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                      Text('Front-end Flutter',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: const Color(0xFF777B84),
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Divider(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            buildSubscribe(),
          ],
        ),
      ),
    );
  }

  Widget buildSubscribe() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Subscribe artikel saya',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const BeveledRectangleBorder(),
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            child: Text('Subscribe',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 15)),
          ),
        ),
      ],
    );
  }
}
