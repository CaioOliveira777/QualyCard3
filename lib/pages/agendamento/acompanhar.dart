import 'package:flutter/material.dart';

class Acompanhar extends StatelessWidget {
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
          /* Expanded(
            child: ListView(         //IMPLEMENTAÇAO PRA ROLAR PARA BAIXO
              children: <Widget>[*/
          Container(
            width: MediaQuery.of(context).size.width, //Teste
            padding: EdgeInsets.only(
              left: 5,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Data',
                      style: TextStyle(fontSize: 15),
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
                        style: TextStyle(fontSize: 15),
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
                        style: TextStyle(fontSize: 15),
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
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('Agendado'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        // ),
        // ),
        // ],
      ),
    );
  }
}
