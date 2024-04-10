import 'package:flutter/material.dart';

class TamanhoProporcional extends StatefulWidget {
  const TamanhoProporcional({super.key});

  @override
  State<TamanhoProporcional> createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanhos proporcionais'),
      ),
      body: Container(
        color: Colors.orange,
        child: FractionallySizedBox(
          widthFactor: 0.50,
          heightFactor: 0.50,
          alignment: Alignment.topCenter,
          child: Text("Tamanho proporcional"),
        ),
      ),
    );
  }
}