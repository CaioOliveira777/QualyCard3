import 'package:flutter/material.dart';
import 'package:qualycard/pages/agendamento/acompanhar.dart';

import '../email_senha/singup.page.dart';
import 'agendar.dart';

class AgendamentoTela1 extends StatelessWidget {
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
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                'calendario3.jpg',
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 10,
                left: 6,
                right: 6,
              ),
              elevation: 7,
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      padding: EdgeInsets.all(0),
                      child: SizedBox(
                          height: 35, width: 0, child: Icon(Icons.search)),
                    ),
                    Text(
                      'Acompanhar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Acompanhar(),
                    ),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.only(
                top: 10,
                left: 6,
                right: 6,
              ),
              elevation: 7,
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      padding: EdgeInsets.all(0),
                      child: SizedBox(
                          height: 35,
                          width: 0,
                          child: Icon(Icons.calendar_today)),
                    ),
                    Text(
                      'Agendar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Agendar(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
