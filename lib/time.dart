import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimePicker_widget extends StatefulWidget {
  const TimePicker_widget({super.key});

  @override
  State<TimePicker_widget> createState() => _TimeStatePicker_widget();
}

class _TimeStatePicker_widget extends State<TimePicker_widget> {
  var tarih = TextEditingController();
  var saat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: saat,
              decoration: const InputDecoration(hintText: "Saat Giriniz"),
              onTap: (() {
                showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                    .then((value) {
                  setState(() {
                    saat.text = "${value!.hour}:${value.minute}";
                  });
                });
              }),
            ),
            TextField(
              controller: tarih,
              decoration: const InputDecoration(hintText: "Tarih Giriniz"),
              onTap: (() {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050))
                    .then((value) {
                  setState(() {
                    tarih.text = "${value!.day}/${value.month}/${value.year}";
                  });
                });
              }),
            )
          ],
        ),
      ),
    );
  }
}
