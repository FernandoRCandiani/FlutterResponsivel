import 'package:flutter/material.dart';

class ReaponsividadeMediaQuery extends StatefulWidget {
  const ReaponsividadeMediaQuery({super.key});

  @override
  State<ReaponsividadeMediaQuery> createState() => _ReaponsividadeMediaQueryState();
}

class _ReaponsividadeMediaQueryState extends State<ReaponsividadeMediaQuery> {

  @override
  Widget build(BuildContext context) {

  double largura = MediaQuery.of(context).size.width;
  double altura = MediaQuery.of(context).size.height;
  double alturaBarraStatus = MediaQuery.of(context).padding.top;
  double alturaAppBar = AppBar().preferredSize.height;
  double larguraItem = largura / 3;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.red,
          ),
          Container(
            width: larguraItem,
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.black,
          ),
          Container(
            width: larguraItem,
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}