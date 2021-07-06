import 'package:qualycard/pages/agendamento/acompanhar.dart';
import 'package:qualycard/pages/agendamento/agendar.dart';
import 'package:qualycard/pages/unidades/unidades.dart';

import 'cards-content.dart';
import 'package:flutter/material.dart';
import 'radial-menu.dart';

//import 'package:url_launcher/url_launcher.dart';
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
    var appBar = AppBar(
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.teal[700]),
      backgroundColor: Colors.white,
      title: SizedBox(
        width: 150,
        child: Image.asset('logo-horizontal.png'),
      ),
      elevation: 1.5,
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
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
                                height: (screenHeight *
                                        0.1309185606060606 *
                                        0.50) +
                                    (size.width *
                                        0.1920138888888889 *
                                        0.50), //size.height * 0.1155936454849498 //79
                                width: (screenHeight *
                                        0.1309185606060606 *
                                        0.50) +
                                    (size.width *
                                        0.1920138888888889 *
                                        0.50), //size.height * 0.1155936454849498 //79
                                child: Image.asset(tr.logo),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  tr.title,
                                  style: TextStyle(
                                    fontSize: (screenHeight *
                                            0.0298294699369 *
                                            0.60) +
                                        (size.width * 0.04375 * 0.40), //18
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  tr.subTitulo,
                                  style: TextStyle(
                                    // (screenHeight * 0.0232007575757576 * 0.05)
                                    fontSize: (size.width *
                                        0.0340277777777778 *
                                        0.95), //14
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
                            //Alert Dialog
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: Text('Escolha uma opção:'),
                                content: Row(
                                  children: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Acompanhar(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.search),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text('Acompanhar'),
                                        ],
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Agendar(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.calendar_today),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('Agendar'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
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
