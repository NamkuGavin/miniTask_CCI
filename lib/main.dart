import 'package:flutter/material.dart';
import 'package:mini_task_cci/page/css_blog.dart';
import 'package:mini_task_cci/page/home.dart';
import 'package:mini_task_cci/page/html_blog.dart';
import 'package:mini_task_cci/page/js_blog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        Widget page;
        switch (settings.name) {
          case "/HTML":
            page = const HtmlBlogPage();
            break;
          case "/JS":
            page = const JsBlogPage();
            break;
          case "/CSS":
            page = const CssBlogPage();
            break;
          default:
            page = const HomePage();
        }

        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => page,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
      },
    );
  }
}
