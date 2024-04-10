import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/item_produto.dart';
import 'package:flutter_application_1/widget/mobile_app_bar.dart';
import 'package:flutter_application_1/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double largura) {
    int colunas = 2;
    if (largura <= 600) {
      colunas = 2;
    } else if (largura < 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }

    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        double largura = constraint.maxWidth;
        double alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  preferredSize: Size(largura, alturaBarra),
                  child: const MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(largura, alturaBarra),
                  child: const WebAppBar(),
                ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                ItemProduto(
                  imagem: 'imagens/p1.jpg',
                  descricao: 'Kit Multimidia',
                  preco: '2.500,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p2.jpg',
                  descricao: 'Pnew Goodyear aro 16',
                  preco: '800,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p3.jpg',
                  descricao: 'Samsung 9',
                  preco: '4.100,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p4.jpg',
                  descricao: 'Samsung Edge',
                  preco: '2.150,90',
                ),
                ItemProduto(
                  imagem: 'imagens/p5.jpg',
                  descricao: 'Galaxy 10',
                  preco: '6.200,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p6.jpg',
                  descricao: 'Iphone 10',
                  preco: '5.900,20',
                ),
                ItemProduto(
                  imagem: 'imagens/p1.jpg',
                  descricao: 'Kit Multimidia',
                  preco: '2.500,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p2.jpg',
                  descricao: 'Pnew Goodyear aro 16',
                  preco: '800,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p3.jpg',
                  descricao: 'Samsung 9',
                  preco: '4.100,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p4.jpg',
                  descricao: 'Samsung Edge',
                  preco: '2.150,90',
                ),
                ItemProduto(
                  imagem: 'imagens/p5.jpg',
                  descricao: 'Galaxy 10',
                  preco: '6.200,00',
                ),
                ItemProduto(
                  imagem: 'imagens/p6.jpg',
                  descricao: 'Iphone 10',
                  preco: '5.900,20',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
