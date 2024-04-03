import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({super.key});

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {

  double altura = 100;
  double largura = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap'),),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            Container(
              height: largura,
              width: altura,
              color: Colors.orange,
            ),
            Container(
              height: largura,
              width: altura,
              color: Colors.green,
            ),
            Container(
              height: largura,
              width: altura,
              color: Colors.pink,
            ),
            Container(
              height: largura,
              width: altura,
              color: Colors.amber,
            ),
            Container(
              height: largura,
              width: altura,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}