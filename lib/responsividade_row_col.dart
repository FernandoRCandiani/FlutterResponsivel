import 'package:flutter/material.dart';

class ReaponsividadeRowCol extends StatefulWidget {
  const ReaponsividadeRowCol({super.key});

  @override
  State<ReaponsividadeRowCol> createState() => _ReaponsividadeRowColState();
}

class _ReaponsividadeRowColState extends State<ReaponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 200,
                  color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 200,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
