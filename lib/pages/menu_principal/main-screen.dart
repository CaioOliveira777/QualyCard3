import 'package:qualycard/pages/unidades/unidades.dart';

import 'cards-content.dart';
import 'package:flutter/material.dart';
import 'radial-menu.dart';

//import 'package:url_launcher/url_launcher.dart';

import '../agendamento/agendamento1.dart';

/*_launchURL() async {
  const url = 'http://www.meuqualycard.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _cardsContent = [
    CardsContent(
      id: 't1',
      title: 'Unidades',
      subTitulo: 'Encontre uma unidade',
      tela: 'SingupPage()',
      logo: 'Predio.png',
    ),
    CardsContent(
      id: 't2',
      title: 'Agende suas consultas',
      subTitulo: 'Ampla rede de atendimentos e serviços',
      tela: 'tela 2',
      logo: 'Calendario2.png',
    ),
    CardsContent(
      id: 't3',
      title: 'Check-Up anual',
      subTitulo: 'Veja aqui os pacotes de exames',
      tela: 'Alguma',
      logo: 'exame2.png',
    ),
    CardsContent(
      id: 't4',
      title: 'Serviços de parceiros',
      subTitulo: 'Encontre aqui serviços',
      tela: 'Alguma',
      logo: 'servicos.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.teal[700]),
        backgroundColor: Colors.white,
        title: SizedBox(
          width: 150,
          child: Image.asset('logo-horizontal.png'),
        ),
        elevation: 1.5,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.teal[700], Colors.grey[600]],
                ),
                color: Colors.teal,
              ),
              child: Text(
                'Meu QualyCard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );*/
                    },
                    child: Text(
                      'Contato',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RadialMenu(),
              Column(
                children: _cardsContent.map((tr) {
                  return Card(
                    elevation: 7,
                    child: FlatButton(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 0),
                              padding: EdgeInsets.all(0),
                              child: SizedBox(
                                height: 79,
                                width: 79,
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
                                builder: (context) => Unidades(),
                              ),
                            );
                          }
                          if (tr.id == 't2') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AgendamentoTela1(),
                              ),
                            );
                          }
                          /*else if (tr.id == 't3') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordPage(),
                          ),
                        );
                      } else if (tr.id == 't4') {
                        _launchURL();
                      }*/
                        }),
                  );
                }).toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
