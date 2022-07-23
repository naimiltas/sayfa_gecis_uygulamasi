// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

  class SayfaB extends StatefulWidget {
  SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
          FlatButton(
            child: Text("Geldiği Sayfaya Dön"),
            onPressed: (){
              Navigator.pop(context);
            }
          ),
           FlatButton(
            child: Text("Anasayfaya Geçiş Yap"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>  Anasayfa()));
            }
          ),
           FlatButton(
            child: Text("Anasayfaya Dön"),
            
            onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            }
          ),
          ],
        ),
      ),
    );
  }
}