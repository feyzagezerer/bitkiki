import 'package:bitkiki/bitki_detay.dart';
import 'package:bitkiki/bitkiler.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bitkiler",
      debugShowCheckedModeBanner: false,
      initialRoute: "/anasayfa",
      routes: {
        "/": (contex) => Anasayfa(),
        "/anasayfa": (contex) => Anasayfa(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");
        if (pathElemanlari[1] == 'bitkiDetay') {
          return MaterialPageRoute(
              builder: (context) => BitkiDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
