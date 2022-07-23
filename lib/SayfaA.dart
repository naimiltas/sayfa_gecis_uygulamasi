// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/SayfaB.dart';

  class SayfaA extends StatefulWidget {
  SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
          FlatButton(
            child: Text("Sayfa B'ye Git"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>  SayfaB()));
            }
          ),
          ],
        ),
      ),
      
    );
  }
}