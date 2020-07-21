import 'package:qualycard/pages/login.page.dart';
import 'package:qualycard/pages/reset-password.page.dart';
import 'package:qualycard/pages/singup.page.dart';
import './cards-content.dart';
import 'package:flutter/material.dart';
import './radial-menu.dart';

import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url = 'http://www.meuqualycard.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _transactions = [
    CardsContent(
      id: 't1',
      title: 'Telemedicina',
      subTitulo: 'Consulta médica on-line',
      tela: 'SingupPage()',
      logo: 'telemedicina.jpg',
    ),
    CardsContent(
      id: 't2',
      title: 'Agende suas consultas',
      subTitulo: 'Ampla rede de atendimentos e serviços',
      tela: 'tela 2',
      logo: 'calendario.jpg',
    ),
    CardsContent(
      id: 't3',
      title: 'Check-Up anual',
      subTitulo: 'Veja aqui os pacotes de exames',
      tela: 'Alguma',
      logo: 'medico-paciente.jpg',
    ),
    CardsContent(
      id: 't4',
      title: 'Serviço de terceiros',
      subTitulo: 'Encontre aqui serviços',
      tela: 'Alguma',
      logo: 'servicos.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu QualyCard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Contato',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RadialMenu(),
          Column(
            children: _transactions.map((tr) {
              return Card(
                elevation: 7,
                child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          padding: EdgeInsets.all(7),
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(tr.logo),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tr.title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              tr.subTitulo,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    onPressed: () {
                      if (tr.id == 't1') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );
                      } else if (tr.id == 't2') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      } else if (tr.id == 't3') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordPage(),
                          ),
                        );
                      } else if (tr.id == 't4') {
                        _launchURL();
                      }
                    }),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
