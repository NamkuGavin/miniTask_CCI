import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/appBar_home.dart';
import '../widget/customTextBold.dart';

class JsBlogPage extends StatefulWidget {
  const JsBlogPage({super.key});

  @override
  State<JsBlogPage> createState() => _JsBlogPageState();
}

class _JsBlogPageState extends State<JsBlogPage> {
  List<String> htmlWithJavaScript = [
    "<!DOCTYPE html>",
    "<html lang=\"en\">",
    "<head>",
    "    <title>Contoh JavaScript</title>",
    "</head>",
    "<body>",
    "    <h1 id=\"judul\">Halo Dunia!</h1>",
    "    <button onclick=\"ubahTeks()\">Klik Saya</button>",
    "",
    "    <script>",
    "        function ubahTeks() {",
    "            document.getElementById(\"judul\").innerText = \"Teks Berubah!\";",
    "        }",
    "    </script>",
    "</body>",
    "</html>"
  ];
  List<String> createElementExample = [
    "const paragraf = document.createElement('p');",
    "paragraf.textContent = 'Ini adalah paragraf baru.';",
    "document.body.appendChild(paragraf);"
  ];

  List<String> eventHandlingExample = [
    "document.querySelector('button').addEventListener('click', () => {",
    "    alert('Tombol diklik!');",
    "});"
  ];

  List<String> asynchronousProgrammingExample = [
    "fetch('https://api.example.com/data')",
    "    .then(response => response.json())",
    "    .then(data => console.log(data));"
  ];

  List<String> formValidationExample = [
    "const form = document.querySelector('form');",
    "form.addEventListener('submit', (event) => {",
    "    const input = document.querySelector('#email').value;",
    "    if (!input.includes('@')) {",
    "        alert('Email tidak valid!');",
    "        event.preventDefault();",
    "    }",
    "});"
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
                  Text("Pengantar ke JavaScript",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 50, fontWeight: FontWeight.bold)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Text(
                      "JavaScript adalah bahasa pemrograman paling populer di dunia, yang digunakan untuk membuat halaman web interaktif. Bersama dengan HTML dan CSS, JavaScript membentuk inti dari teknologi pengembangan web modern. Dengan JavaScript, pembuat dapat menambahkan fungsi ke situs web.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  SizedBox(
                      width: 1000, child: Image.asset("assets/image/js.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  konten()
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
        Text("Apa itu JavaScript?",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "JavaScript adalah bahasa pemrograman tingkat tinggi yang berfokus pada interaktivitas web. JavaScript awalnya dirancang untuk pengembangan sisi klien, tetapi dengan munculnya Node.js, JavaScript juga digunakan untuk pengembangan sisi server.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Keuntungan Menggunakan JavaScript",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        CustomBoldText(
            boldText: "1. Interaktifitas:",
            normalText:
                "JavaScript memungkinkan membuat situs web lebih hidup dengan fitur seperti menu dropdown, slider gambar, dan validasi formulir."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "2. Kompatibilitas Browser:",
            normalText: "JavaScript didukung oleh semua browser modern."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "3. Fleksibilitas:",
            normalText:
                "Dapat digunakan untuk pengembangan front-end dan back-end."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "4. Ekosistem Besar:",
            normalText:
                "JavaScript memiliki komunitas pengembang yang luas dan banyak pustaka/framework seperti React, Angular, dan Vue.js."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Bagaimana JavaScript Bekerja?",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "JavaScript dijalankan di browser menggunakan mesin JavaScript bawaan, seperti V8 di Google Chrome atau SpiderMonkey di Mozilla Firefox. Skrip JavaScript biasanya ditulis dalam dokumen HTML atau dalam file eksternal.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text("Contoh Dasar JavaScript",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text("Berikut adalah contoh sederhana JavaScript:",
            style: GoogleFonts.poppins(fontSize: 15)),
        codeViewer1(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text(
            "Pada contoh di atas, ketika user mengklik tombol, teks dalam elemen <h1> akan berubah.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Fitur Utama JavaScript",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        codeViewer2(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Text("Kesimpulan",
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text(
            "JavaScript adalah bahasa yang sangat kuat dan fleksibel untuk pembuatan web. Dengan terus berkembang, JavaScript memungkinkan pengembang untuk menciptakan pengalaman pengguna yang kaya dan dinamis. Jika Anda ingin menjadi pembuat web yang andal, mempelajari JavaScript adalah langkah yang sangat penting!",
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
            styleOptions: EditorModelStyleOptions(heightOfContainer: 425),
            files: [
              FileEditor(
                name: "page1.html",
                language: "html",
                code: htmlWithJavaScript.join("\n"),
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
        Text("1. Manipulasi DOM (Document Object Model)",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text(
            "JavaScript memungkinkan untuk memanipulasi elemen HTML secara dinamis.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 100),
            files: [
              FileEditor(
                name: "fungsi.js",
                language: "js",
                code: createElementExample.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Text("2. Event Handling",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text(
            "JavaScript dapat menangani berbagai peristiwa, seperti klik, hover, atau input pengguna.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 100),
            files: [
              FileEditor(
                name: "fungsi.js",
                language: "js",
                code: eventHandlingExample.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Text("3. Asynchronous Programming",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Text(
            "Dengan fitur seperti callback, promises, dan async/await, JavaScript memungkinkan pengolahan data secara asinkron.",
            style: GoogleFonts.poppins(fontSize: 15)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CodeEditor(
          model: EditorModel(
            styleOptions: EditorModelStyleOptions(heightOfContainer: 100),
            files: [
              FileEditor(
                name: "fungsi.js",
                language: "js",
                code: asynchronousProgrammingExample.join("\n"),
                readonly: true,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Text("4. Pustaka dan Framework",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700)),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "- React.js:",
            normalText: "Digunakan untuk membangun antarmuka pengguna."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "- Node.js:",
            normalText: "Untuk pengembangan aplikasi sisi server."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        CustomBoldText(
            boldText: "- Vue.js:",
            normalText: "Framework ringan untuk pengembangan front-end."),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      ],
    );
  }
}
