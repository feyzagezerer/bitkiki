import 'package:bitkiki/bitki_listesi.dart';
import 'package:bitkiki/gunun_bitkisi.dart';
import 'package:bitkiki/test.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int secilenMenuItem = 0;
  List<Widget> tumSayfalar;
  BitkiListesi sayfaBitkiListesi;
  Test sayfaTest;
  GununBitkisi sayfaGununBitkisi;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaBitkiListesi = BitkiListesi();
    sayfaTest = Test();
    sayfaGununBitkisi = GununBitkisi();
    tumSayfalar = [sayfaBitkiListesi, sayfaTest, sayfaGununBitkisi];
    //  Bildirimler().initializeFCMNotification(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bitkiki",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25.0),
        ),
      ),
      body: tumSayfalar[secilenMenuItem],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.green,
          primaryColor: Colors.redAccent,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.art_track_rounded,
                color: Colors.red.shade100,
              ),
              title: Text(
                'Bitkiler',
                style: TextStyle(color: Colors.red.shade100),
              ),
              backgroundColor: Colors.blueAccent,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_turned_in_rounded,
                  color: Colors.red.shade100,
                ),
                title: Text(
                  'Size Uygun Bitki',
                  style: TextStyle(color: Colors.red.shade100),
                ),
                backgroundColor: Colors.orangeAccent),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.auto_awesome,
                color: Colors.red.shade100,
              ),
              title: Text(
                'Gunun Bitkisi',
                style: TextStyle(color: Colors.red.shade100),
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: secilenMenuItem,
          fixedColor: Colors.red,
          onTap: (index) {
            setState(() {
              secilenMenuItem = index;
            });
          },
        ),
      ),
    );
  }
}
