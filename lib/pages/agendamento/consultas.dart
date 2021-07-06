class Consultas {
  String data;
  String especialidade;
  String profissional;
  String status;

  Consultas({this.data, this.especialidade, this.profissional, this.status});
  static List<Consultas> getConsultas() {
    return <Consultas>[
      Consultas(
          data: '12/06',
          especialidade: 'Cardiologista',
          profissional: 'Dr.Fulano',
          status: 'Agendado'),
      Consultas(
          data: '20/12',
          especialidade: 'Pneumologia',
          profissional: 'Dr.Cicrano',
          status: 'Não agendado'),
      Consultas(
          data: '07/06',
          especialidade: 'Pediatra',
          profissional: 'Dr.Lucildro',
          status: 'Agendado'),
      Consultas(
          data: '21/02',
          especialidade: 'Otorrino',
          profissional: 'Dr.Adolfo',
          status: 'Pendente'),
      Consultas(
          data: '15/05',
          especialidade: 'Estetoscopio',
          profissional: 'Dr.Guaroto',
          status: 'Agendado')
    ];
  }
}
