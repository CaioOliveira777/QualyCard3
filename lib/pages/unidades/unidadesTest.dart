import 'package:flutter/material.dart';
import 'unidades-content.dart';

class UnidadesTeste extends StatelessWidget {
  final _cardsContent = [
    UnidadesContent(
      id: 'u1',
      nome: 'Unidade da Lapa',
      endereco: 'Av.Manoel Barros, 191, Pituba',
      logo: 'clinica.jpg',
    ),
    UnidadesContent(
      id: 'u2',
      nome: 'Unidade Brotas',
      endereco: 'Av.Ogunjá, 202, Brotas',
      logo: 'servicos.jpg',
    ),
    UnidadesContent(
      id: 'u3',
      nome: 'Unidade Stiep',
      endereco: 'Jardin de Alho',
      logo: 'telemedicina.jpg',
    ),
  ];
  /*String logo1;
  String nome1;
  String endereco1;
  String abcd;
  String qualquerFunc(_cardsContent, logo1, nome1, endereco1) {
    _cardsContent.map((un) {
      un.logo = logo1;
      un.nome = nome1;
      un.endereco = endereco1;
    }).toString();
    return _cardsContent = abcd;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unidades',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: _cardsContent.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
              children: _cardsContent.map((un) {
            return Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 9),
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset(
                    un.logo,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      un.nome,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(un.endereco),
                  ],
                ),
              ],
            );
          }).toList());
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
