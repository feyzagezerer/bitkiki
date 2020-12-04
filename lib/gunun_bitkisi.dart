import 'dart:math';

import 'package:bitkiki/bitki_listesi.dart';
import 'package:flutter/material.dart';

import 'models/bitki.dart';

class GununBitkisi extends StatefulWidget {
  _GununBitkisiState createState() => _GununBitkisiState();
}

class _GununBitkisiState extends State<GununBitkisi> {
  Bitki secilenBitki;

  @override
  Widget build(BuildContext context) {
    secilenBitki = BitkiListesi
        .tumBitkiler[Random().nextInt(BitkiListesi.tumBitkiler.length)];

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
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
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
