import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class switch_widget extends StatefulWidget {
  const switch_widget({super.key});

  @override
  State<switch_widget> createState() => _switch_widgetState();
}

class _switch_widgetState extends State<switch_widget> {
  bool swkontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Column(
          children: [
            Switch(
                value: swkontrol,
                activeTrackColor: Colors.pink,
                activeColor: Colors.green,
                inactiveTrackColor: Colors.red,
                inactiveThumbColor: Colors.black,
                onChanged: (veri) {
                  setState(() {
                    swkontrol = veri;
                  });
                  print("Switch: $veri");
                })
          ],
        ));
  }
}
