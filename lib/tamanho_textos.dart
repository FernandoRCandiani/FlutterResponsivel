import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({super.key});

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanhos de textos'),
      ),
      body: const Column(
        children: [
          Text(
            "There are many variations of passages of Lorem"
            "Ipsum available, but the majority have suffered"
            "alteration in some form, by injected humour, or "
            "randomised words which don't look even slightly believable.",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 50),
          AutoSizeText(
            "If you are going to use a passage of Lorem Ipsum, you need"
            "to be sure there isn't anything embarrassing hidden in the"
            "middle of text. All the Lorem Ipsum generators on the Internet"
            "tend to repeat predefined chunks as necessary, making this the"
            "first true generator on the Internet. It uses a dictionary of",
            style: TextStyle(fontSize: 30),
            //maxLines: 2,
            //minFontSize: 14,
            // overflow: TextOverflow.ellipsis,
            //overflowReplacement: Text("Não coube!"),

            // minFontSize: 10,
            // maxLines: 2,
            // stepGranularity: 10,

            maxLines: 3,
            presetFontSizes: [30, 22, 10],

          ),
        ],
      ),
    );
  }
}
