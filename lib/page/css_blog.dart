import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_task_cci/widget/customTextBold.dart';

import '../widget/appBar_home.dart';

class CssBlogPage extends StatefulWidget {
  const CssBlogPage({super.key});

  @override
  State<CssBlogPage> createState() => _CssBlogPageState();
}

class _CssBlogPageState extends State<CssBlogPage> {
  List<String> contentOfPage1 = [
    "<head>",
    "    <style>",
    "        p {",
    "            color: red;",
    "            font-size: 18px;",
    "        }",
    "    </style>",
    "</head>",
  ];
  List<String> contentOfPage2 = [
    "<head>",
    '    <link rel="stylesheet" href="styles.css">',
    "</head>",
  ];
  List<String> contentOfPage3 = [
    "p {",
    "    color: green;",
    "    font-size: 20px;",
    "}",
  ];

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
                  Text("Pengantar ke CSS\n(Cascading Style Sheets)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 50, fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Text(
                      "Jika HTML itu membuat struktur halaman web, maka CSS memberikan gaya atau estetika pada halaman web",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  SizedBox(
                      width: 1000, child: Image.asset("assets/image/css.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  konten(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget konten() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Apa itu CSS?",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "Css adalah singkatan dari Cascading Style Sheet yang dipergunakan untuk menentukan tampilan dan format pada sebuah website. Artinya, dengan adanya CSS bisa mengatur mulai dari font, warna tulisan dan latar belakang pada website tersebut. Cascading Style Sheet (CSS) dapat juga dipergunakan bersamaan dengan html CSS. Dengan adanya alat tersebut bisa mempersingkat waktu dan cukup menuliskan kode satu kali saja.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Keuntungan Menggunakan CSS",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        CustomBoldText(
            boldText: "1. Pemeliharaan Mudah:",
            normalText:
                "Dengan memisahkan desain dari konten/isi web, Anda dengan mudah memperbarui tampilan situs web tanpa harus mengedit setiap halaman"),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "2. Konsistensi:",
            normalText:
                "CSS memungkinkan untuk menerapkan desain yang sama pada beberapa halaman sekaligus, menciptakan tampilan yang konsisten."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "3. Pengoptimalan Waktu:",
            normalText:
                "Dengan style nya itu eksternal, Anda hanya perlu memanggil file CSS nya sekali, yang menghemat waktu saat membuat web dan memuat situs."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "4. Kompatibilitas dengan Perangkat:",
            normalText:
                "CSS memungkinkan pembuat membuat situs web responsif yang terlihat bagus di perangkat apapun, dari komputer hingga handphone."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Struktur Dasar CSS",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "CSS bekerja dengan menghubungkan desain ke HTML menggunakan tiga metode utama:",
            style: GoogleFonts.poppins(fontSize: 15)),
        codeViewer(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Kesimpulan",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "CSS adalah bahasa pemrograman untuk menciptakan tampilan web yang menarik dan interaktif. Dengan menguasai CSS, Kita bisa mengubah desain sederhana menjadi karya visual yang menakjubkan. Jadi, jika baru memulai perjalanan dalam pembuatan web, belajar CSS adalah langkah awal yang sangat penting!",
            style: GoogleFonts.poppins(fontSize: 15)),
      ],
    );
  }

  Widget codeViewer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "1. Inline CSS",
            normalText:
                "Inline CSS diterapkan langsung ke elemen HTML menggunakan atribut style"),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 60),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code:
                    "<p style='color: blue; font-size: 16px;'>Teks ini berwarna biru.</p>",
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "2. Internal CSS",
            normalText:
                "Internal CSS ditulis di dalam elemen <style> di bagian <head> sebuah HTML."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 225),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: contentOfPage1.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "3. External CSS",
            normalText:
                "External CSS disimpan di file terpisah dengan ekstensi .css dan dihubungkan dengan memakai elemen <link>"),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 100),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: contentOfPage2.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
