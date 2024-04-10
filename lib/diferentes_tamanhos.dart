import 'package:flutter/material.dart';

class DiferenteTamanho extends StatefulWidget {
  const DiferenteTamanho({super.key});

  @override
  State<DiferenteTamanho> createState() => _DiferenteTamanhoState();
}

class _DiferenteTamanhoState extends State<DiferenteTamanho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diferentes tamanhos"),
      ),
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              color: Colors.orange,
              child: const Text("Item 1"),
            ),
            Container(
              width: 200,
              color: Colors.green,
              child: const Text(
                  "If you are going to use a passage of Lorem Ipsum, you need"),
            )
          ],
        ),
      ),
    );
  }
}
