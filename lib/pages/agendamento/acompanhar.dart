import 'package:flutter/material.dart';
import 'package:qualycard/pages/constantes/appBar2.dart';
import 'consultas.dart';

class Acompanhar extends StatefulWidget {
  @override
  _AcompanharState createState() => _AcompanharState();
}

class _AcompanharState extends State<Acompanhar> {
  List<Consultas> consultas;
  List<Consultas> selectedConsultas;
  @override
  void initState() {
    selectedConsultas = [];
    consultas = Consultas.getConsultas();
    super.initState();
  }

  onSelectedRow(bool selected, Consultas consu) async {
    setState(() {
      if (selected) {
        selectedConsultas.add(consu);
      } else {
        selectedConsultas.remove(consu);
      }
    });
  }

  deleteSelected() async {
    setState(
      () {
        if (selectedConsultas.isNotEmpty) {
          List<Consultas> temp = [];
          temp.addAll(selectedConsultas);
          for (Consultas consulta in temp) {
            consultas.remove(consulta);
            selectedConsultas.remove(consulta);
          }
        }
      },
    );
  }

  DataTable dataBody() {
    return DataTable(
      columns: [
        DataColumn(
          label: Text('Data'),
          numeric: false,
          tooltip: 'Data da consulta',
        ),
        DataColumn(
          label: Text('Especialidade'),
          numeric: false,
          tooltip: 'Especialidade',
        ),
        DataColumn(
          label: Text('Profissional'),
          numeric: false,
          tooltip: 'Profissional da área',
        ),
        DataColumn(
          label: Text('Status'),
          numeric: false,
          tooltip: 'Agendamento feito ou não',
        ),
      ],
      rows: consultas
          .map(
            (consu) => DataRow(
              selected: selectedConsultas.contains(consu),
              onSelectChanged: (b) {
                onSelectedRow(b, consu);
              },
              cells: [
                DataCell(
                  Text(consu.data),
                ),
                DataCell(
                  Text(consu.especialidade),
                ),
                DataCell(
                  Text(consu.profissional),
                ),
                DataCell(
                  Text(consu.status),
                ),
              ],
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarConsts.appBar2,
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Acompanhe a sua consulta:',
                      style: TextStyle(fontSize: 20),
                    ),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 10, left: 10),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 3, left: 10, bottom: 10),
                    child: Text(
                      '(arraste para o lado)',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: dataBody(),
                scrollDirection: Axis.horizontal,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: OutlineButton(
                      child: Text('Selecionou ${selectedConsultas.length}'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: OutlineButton(
                      child: Text('Deletar selecionados'),
                      onPressed: selectedConsultas.isEmpty
                          ? null
                          : () {
                              deleteSelected();
                            },
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
