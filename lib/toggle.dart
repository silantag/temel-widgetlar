import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class toggle_widget extends StatefulWidget {
  const toggle_widget({super.key});

  @override
  State<toggle_widget> createState() => _toggleState_widget();
}

class _toggleState_widget extends State<toggle_widget> {
  var toggdurum = [false, true, false];
  int secilen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          ToggleButtons(
            children: [
              Icon(Icons.looks_3),
              Icon(Icons.looks_4),
              Icon(Icons.looks_5),
            ],
            isSelected: toggdurum,
            color: Colors.purple,
            selectedColor: Colors.pink,
            fillColor: Colors.amber,
            onPressed: (int secildi) {
              setState(() {
                toggdurum[secildi] != toggdurum[secildi];
              });
              secilen = secildi;
              print("${secilen + 1}.toggle secildi");
            },
          ),
          ElevatedButton(
              onPressed: () {
                print("En son ${secilen + 1}.toggle secildi.");
              },
              child: Text("GÖSTER"))
        ],
      ),
    );
  }
}
