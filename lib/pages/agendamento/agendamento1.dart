import 'package:flutter/material.dart';
import 'package:qualycard/pages/agendamento/acompanhar.dart';

import 'agendar.dart';

class AgendamentoTela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.teal[700]),
        title: SizedBox(
          width: 150,
          child: Image.asset('logo-horizontal.png'),
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
