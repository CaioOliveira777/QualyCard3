import 'package:flutter/material.dart';

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
      items: <String>['12:12', '11:22', '13:12', '15:20']
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
        margin: EdgeInsets.only(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'calendario3.jpg',
                ),
              ),
              Container(
                child: _buildEspecialidade(),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
              ),
              Container(
                child: _buildProfissional(),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
              ),
              Container(
                child: _buildData(),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
              ),
              Container(
                child: _buildHora(),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
              ),
              SizedBox(height: 18),
              RaisedButton(
                child: Text(
                  'Agendar',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
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
