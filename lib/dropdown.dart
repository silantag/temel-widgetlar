import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dropdown_menu extends StatefulWidget {
  const Dropdown_menu({super.key});

  @override
  State<Dropdown_menu> createState() => _Dropdown_menuState();
}

class _Dropdown_menuState extends State<Dropdown_menu> {
  List<String> ulkelerliste = [];
  String secilen = "Türkiye";
  @override
  void initState() {
    ulkelerliste.add("Türkiye");
    ulkelerliste.add("Almanya");
    ulkelerliste.add("Fransa");
    ulkelerliste.add("Rusya");
    ulkelerliste.add("Çin");
    ulkelerliste.add("Kanada");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center());
  }
}
