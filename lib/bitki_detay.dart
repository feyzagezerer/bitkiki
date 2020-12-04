import 'package:bitkiki/bitki_listesi.dart';
import 'package:bitkiki/models/bitki.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BitkiDetay extends StatelessWidget {
  int gelenIndex;
  Bitki secilenBitki;

  BitkiDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBitki = BitkiListesi.tumBitkiler[gelenIndex];

    return Scaffold(
      primary: true,
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            primary: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + secilenBitki.bitkiFotograf,
                  fit: BoxFit.cover),
              title: Text(" " + secilenBitki.bitkiAdi + " ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      backgroundColor: Colors.green)),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(15)),
              child: SingleChildScrollView(
                child: Text(
                  secilenBitki.bitkiOzellikleri,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
