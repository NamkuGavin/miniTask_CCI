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
                  Text(
                      "Web telah menjadi bagian tak terpisahkan dari kehidupan sehari-hari, dan di balik setiap halaman web yang kita akses, terdapat tiga komponen inti yang bekerja bersama: CSS, HTML, dan JavaScript. HTML berfungsi sebagai struktur dasar, memberikan kerangka kerja untuk elemen-elemen di sebuah halaman, sementara CSS berperan dalam menentukan tampilan visualnya. Di sisi lain, JavaScript menambahkan interaktivitas dan dinamisme yang memungkinkan pengguna berinteraksi dengan situs web dengan cara yang lebih mendalam.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Text(
                      '"In a dunia yang terus berkembang, penguasaan CSS, HTML, dan JavaScript adalah kunci untuk menciptakan situs web yang tidak hanya indah tetapi juga berfungsi dengan baik dalam berbagai perangkat."',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w700)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("— Douglas Crockford, Ahli JavaScript",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600))),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Text(
                      "Dalam era pengembangan web yang terus berkembang, pemahaman tentang HTML, CSS, dan JavaScript menjadi landasan yang sangat penting. HTML berfungsi sebagai kerangka dasar untuk membangun struktur halaman web, menciptakan elemen-elemen seperti teks, gambar, dan tautan.\n\nSedangkan CSS bertugas mengatur tampilan visual dan tata letak halaman agar tampak estetis dan terorganisir dengan baik. Namun, untuk menambahkan elemen interaktif seperti validasi formulir, animasi, dan fungsionalitas lainnya, kita memerlukan JavaScript. Banyak developer yang masih menghadapi tantangan dalam menyatukan ketiga komponen ini secara efektif, sehingga mereka kesulitan membangun aplikasi web yang benar-benar interaktif dan responsif.\n\nOleh karena itu, pemahaman yang mendalam tentang bagaimana HTML, CSS, dan JavaScript bekerja bersama akan sangat membantu dalam menciptakan pengalaman pengguna yang optimal dan fungsional.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize: 15)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
