import 'package:flutter/material.dart';
import 'package:qualycard/pages/email_senha/singup.page.dart';

class Agendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AgendarState();
  }
}

class AgendarState extends State<Agendar> {
  String _especialidade;
  String _profissional;
  String _data;
  String _hora;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropdownValue = 'asada';
  Widget _buildEspecialidade() {
    return DropdownButtonFormField(
      decoration: InputDecoration(labelText: 'Especialidade'),
      onSaved: (String value) {
        _especialidade = value;
      },
      onChanged: (String newValue) {
        setState(
          () {
            dropdownValue = newValue;
          },
        );
      },
      items: <String>['Cardiologista', 'Pediatra', 'Odonto', 'Oftalmo']
          .map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }

  Widget _buildProfissional() {
    return DropdownButtonFormField(
      decoration: InputDecoration(labelText: 'Profissional'),
      onSaved: (String value) {
        _profissional = value;
      },
      onChanged: (String newValue) {
        setState(
          () {
            dropdownValue = newValue;
          },
        );
      },
      items: <String>['Joao', 'Rebecca', 'Ricardo', 'Caio']
          .map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }

  Widget _buildData() {
    return DropdownButtonFormField(
      decoration: InputDecoration(labelText: 'Data'),
      /*validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },*/
      onSaved: (String value) {
        _data = value;
      },
      onChanged: (String newValue) {
        setState(
          () {
            dropdownValue = newValue;
          },
        );
      },
      items: <String>[
        '13/06',
        '12/11',
        '15/6',
        '24/08',
      ].map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }

  Widget _buildHora() {
    return DropdownButtonFormField(
      decoration: InputDecoration(labelText: 'Hora'),
      onSaved: (String value) {
        _hora = value;
      },
      onChanged: (String newValue) {
        setState(
          () {
            dropdownValue = newValue;
          },
        );
      },
      items: <String>['12:12', '11:22', '13:12', '15:16']
          .map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }

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
        margin: EdgeInsets.only(
          top: 16,
          left: 24,
          right: 24,
          bottom: 24,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildEspecialidade(),
              _buildProfissional(),
              _buildData(),
              _buildHora(),
              SizedBox(height: 100),
              RaisedButton(
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return;
                  }

                  _formKey.currentState.save();

                  print(_especialidade);
                  print(_profissional);

                  print(_hora);
                  print(_data);

                  //Send to API
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
