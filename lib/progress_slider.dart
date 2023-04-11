import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProgressBar_widget extends StatefulWidget {
  const ProgressBar_widget({super.key, required this.title});
  final String title;

  @override
  State<ProgressBar_widget> createState() => _ProgressBar_widgetState();
}

class _ProgressBar_widgetState extends State<ProgressBar_widget> {
  bool progres = true;
  double ilerleme = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progres = true;
                      });
                    },
                    child: const Text("Başla")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progres = false;
                      });
                    },
                    child: Text("Dur"))
              ],
            ),
            Visibility(
                visible: progres,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.purple),
                )),
            Text("Sonuç: ${ilerleme.toInt()}"),
            Slider(
                max: 100.0,
                min: 0.0,
                value: ilerleme,
                activeColor: Color.fromARGB(255, 58, 111, 137),
                inactiveColor: Colors.amber,
                onChanged: (double i) {
                  setState(() {
                    ilerleme = i;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print("Slider ilerleme :${ilerleme.toInt()}");
                },
                child: const Text("Göster"))
          ],
        ),
      ),
    );
  }
}
