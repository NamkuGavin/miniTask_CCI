import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/appBar_home.dart';
import '../widget/customTextBold.dart';

class HtmlBlogPage extends StatefulWidget {
  const HtmlBlogPage({super.key});

  @override
  State<HtmlBlogPage> createState() => _HtmlBlogPageState();
}

class _HtmlBlogPageState extends State<HtmlBlogPage> {
  List<String> contentOfPage1 = [
    "<!DOCTYPE html>",
    "<html lang=\"en\">",
    "<head>",
    "    <meta charset=\"UTF-8\">",
    "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
    "    <title>Judul Halaman</title>",
    "</head>",
    "<body>",
    "    <h1>Selamat Datang di Dunia HTML</h1>",
    "    <p>Ini adalah paragraf pertama Anda!</p>",
    "</body>",
    "</html>"
  ];
  List<String> headingExample = ["<h1>Heading 1</h1>", "<h2>Heading 2</h2>"];

  List<String> orderedListExample = [
    "<ol>",
    "    <li>Item 1</li>",
    "    <li>Item 2</li>",
    "</ol>"
  ];

  List<String> unorderedListExample = [
    "<ul>",
    "    <li>Item A</li>",
    "    <li>Item B</li>",
    "</ul>"
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
                  Text("Pengantar ke HTML\n(HyperText Markup Language)",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 50, fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Text(
                      "HTML itu fondasi dari setiap halaman web yang ada di internet. HTML membuat struktur dan konten halaman web.\nTanpa HTML, situs web tidak mempunyai kerangka yang akan ditampilkan.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  SizedBox(
                      width: 1000, child: Image.asset("assets/image/html.jpg")),
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
        Text("Apa itu HTML?",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "HTML adalah bahasa pemrograman yang digunakan untuk membuat dan menyusun halaman web. HTML terdiri dari elemen-elemen yang didefinisikan oleh tag. Setiap elemen memiliki fungsi tertentu, seperti menampilkan teks sebagai heading, paragraf, atau daftar.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Keuntungan Menggunakan HTML",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        CustomBoldText(
            boldText: "1. Dasar Web Development:",
            normalText:
                "HTML adalah langkah pertama bagi siapa saja yang ingin mempelajari pembuatan web"),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "2. Mudah Dipelajari::",
            normalText:
                "Dengan sintaks yang sederhana, HTML cocok untuk pemula."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "3. Didukung oleh Semua Browser:",
            normalText:
                "Semua browser modern mendukung HTML, sehingga memungkinkan kompatibilitas yang luas"),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "4. Kombinasi dengan Teknologi Lain:",
            normalText:
                "HTML dengan mudah digabungkan dengan CSS dan JavaScript untuk menciptakan situs yang interaktif dan menarik."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Struktur Dasar HTML",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "HTML memiliki struktur yang dimulai dengan deklarasi dan diikuti oleh elemen-elemen penting. Berikut adalah contoh struktur dasar dokumen HTML:",
            style: GoogleFonts.poppins(fontSize: 15)),
        codeViewer1(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Text("Penjelasan Struktur",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "1. <!DOCTYPE html>:",
            normalText:
                "Deklarasi untuk browser bahwa dokumen ini menggunakan HTML5."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "2. <html>:",
            normalText: "Elemen root yang mencakup seluruh isi web."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "3. <head>:",
            normalText:
                "Berisi informasi, seperti judul halaman dan link ke file CSS."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "4. <body>:",
            normalText: "Berisi konten utama yang ditampilkan di web."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Elemen-Elemen HTML yang Umum Digunakan",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "HTML memiliki berbagai elemen yang memungkinkan untuk membuat berbagai jenis konten. Berikut adalah beberapa elemen penting:",
            style: GoogleFonts.poppins(fontSize: 15)),
        codeViewer2(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Kesimpulan",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "HTML adalah fondasi utama untuk membuat halaman web. Dengan memahami HTML, bisa membuka pintu untuk mempelajari teknologi web lainnya seperti CSS dan JavaScript. Meskipun sederhana, HTML menawarkan fleksibilitas dan kemampuan yang cukup untuk membuat situs web yang fungsional dan menarik. Jadi, jika baru memulai perjalanan dalam pengembangan web, HTML adalah langkah pertama yang sempurna!",
            style: GoogleFonts.poppins(fontSize: 15)),
      ],
    );
  }

  Widget codeViewer1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 325),
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
      ],
    );
  }

  Widget codeViewer2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "1. Heading",
            normalText:
                "Heading digunakan untuk memberi judul pada bagian tertentu dari halaman."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 75),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: headingExample.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "2. Paragraf", normalText: "Digunakan untuk teks biasa."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 60),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: '<p>Ini adalah sebuah paragraf.</p>',
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "3. Daftar Berurutan (Ordered List):", normalText: ""),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 125),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: orderedListExample.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "4. Daftar Tidak Berurutan (Unordered List):",
            normalText: ""),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 125),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: unorderedListExample.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "5. Tautan",
            normalText: "Untuk membuat hyperlink ke halaman lain."),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 60),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: '<a href="https://example.com">Kunjungi Example</a>',
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        CustomBoldText(
            boldText: "5. Gambar",
            normalText: "Menyisipkan gambar ke halaman."),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 60),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: '<img src="gambar.jpg" alt="Deskripsi Gambar">',
                readonly: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
