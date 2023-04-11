import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class radio_widget extends StatefulWidget {
  const radio_widget({super.key});

  @override
  State<radio_widget> createState() => _radio_widgetState();
}

class _radio_widgetState extends State<radio_widget> {
  int radiodeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: Column(
        children: [
          RadioListTile(
              value: 1,
              activeColor: Colors.red,
              groupValue: radiodeger,
              title: Text("Galatasaray"),
              onChanged: (int? veri) {
                setState(() {
                  radiodeger = veri!;
                });
                print("Galatasaray Seçildi");
              }),
          RadioListTile(
              value: 2,
              activeColor: Colors.black,
              groupValue: radiodeger,
              title: const Text("Beşiktaş"),
              onChanged: (int? veri) {
                setState(() {
                  radiodeger = veri!;
                });
                print("Beşiktaş Seçildi");
              }),
        ],
      ),
    );
  }
}
