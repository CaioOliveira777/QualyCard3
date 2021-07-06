import 'package:flutter/material.dart';
import 'unidades-content.dart';
import 'package:qualycard/pages/constantes/appBar2.dart';

class Unidades extends StatelessWidget {
  final _cardsContent = [
    UnidadesContent(
      id: 'u1',
      nome: 'Unidade da Lapa',
      endereco: 'Av.Manoel Barros, 191, Pituba',
      logo: 'Predio.png',
    ),
    UnidadesContent(
      id: 'u2',
      nome: 'Unidade Brotas',
      endereco: 'Av.Ogunjá, 202, Brotas',
      logo: 'Predio.png',
    ),
    UnidadesContent(
      id: 'u3',
      nome: 'Unidade Stiep',
      endereco: 'Jardin de Alho',
      logo: 'Predio.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarConsts.appBar2,
      body: ListView(
        children: _cardsContent.map(
          (un) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                onTap: () {},
                leading: Image.asset(un.logo),
                title: Text(
                  un.nome,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  un.endereco,
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(Icons.place),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
