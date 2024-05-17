import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendez/pages/pagina_bienvenida.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PORSCHE APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),
      ),
      home: const PaginaBienvenida(),
    );
  }
}

class GoogleFonts {
  static mulishTextTheme(TextTheme textTheme) {}
}
