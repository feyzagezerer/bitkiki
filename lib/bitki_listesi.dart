import 'package:bitkiki/utils/strings.dart';
import 'package:flutter/material.dart';

import 'models/bitki.dart';

class BitkiListesi extends StatelessWidget {
  static List<Bitki> tumBitkiler;

  @override
  Widget build(BuildContext context) {
    tumBitkiler = veriKaynaginiHazirla();
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          "Bitkiki",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25.0),
        ),
      ),*/
      body: listeyiHazirla(),
    );
  }

  List<Bitki> veriKaynaginiHazirla() {
    List<Bitki> bitkiler = [];
    for (int i = 0; i < 12; i++) {
      String bitkiFotograf =
          Strings.BITKI_ADLARI[i].toLowerCase() + "${i + 1}.png";

      Bitki eklenecekBitki = Bitki(
          Strings.BITKI_ADLARI[i],
          Strings.BITKI_LATINCE[i],
          Strings.BITKI_OZELLIKLERI[i],
          bitkiFotograf);
      bitkiler.add(eklenecekBitki);
    }
    return bitkiler;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBitki(context, index);
      },
      itemCount: tumBitkiler.length,
    );
  }

  Widget tekSatirBitki(BuildContext context, int index) {
    Bitki oAnListeyeEklenenBitki = tumBitkiler[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/bitkiDetay/$index"),
          leading: Image.asset(
            "images/" + oAnListeyeEklenenBitki.bitkiFotograf,
            width: 74,
            height: 74,
          ),
          title: Text(
            oAnListeyeEklenenBitki.bitkiAdi,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.green.shade500),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              oAnListeyeEklenenBitki.bitkiLatince,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.green),
        ),
      ),
    );
  }
}
