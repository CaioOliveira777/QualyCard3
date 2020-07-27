import 'package:flutter/material.dart';
import 'package:qualycard/pages/email_senha/singup.page.dart';

class Acompanhar extends StatelessWidget {
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
          SizedBox(
            child: Image.asset(
              'calendario3.jpg',
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Acompanhar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 5,
              top: 15,
            ),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Data',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('12/06'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.5),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Especialidade',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Cardiologista'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.5),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Profissional',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Dr.Fulano'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.5),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Agendado'),
                    ],
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
