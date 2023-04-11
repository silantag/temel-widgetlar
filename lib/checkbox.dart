import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class checkbox_widget extends StatefulWidget {
  const checkbox_widget({super.key});

  @override
  State<checkbox_widget> createState() => _checkbox_widgetState();
}

class _checkbox_widgetState extends State<checkbox_widget> {
  bool kotlind = false;
  bool dartd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Button'),
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
                value: kotlind,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.black,
                activeColor: Colors.amber,
                title: Text("Kotlin"),
                onChanged: (bool? veri) {
                  print("Kotlin Seçildi $veri");
                  setState(() {
                    kotlind = veri!;
                  });
                }),
            CheckboxListTile(
                value: dartd,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.black,
                activeColor: Colors.amber,
                title: Text("Dart"),
                onChanged: (bool? veri) {
                  print("Dart Seçildi $veri");
                  setState(() {
                    dartd = veri!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
