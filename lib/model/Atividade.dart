import "./Funcionario.dart";

class Atividade {
  String _titulo;
  String _descricao;
  List<Funcionario> _funcionarios;
  String _data;
  String _hora;
  bool status;

  bool get getStatus => status;

  set setStatus(bool status) => this.status = status;

  String get getData => _data;

  set setData(String data) => this._data = data;

  String get getHora => _hora;

  set setHora(String hora) => this._hora = hora;

  String get getTitulo => _titulo;

  set setTitulo(String titulo) => this._titulo = titulo;

  String get getDescricao => _descricao;

  set setDescricao(String descricao) => this._descricao = descricao;

  List get getFuncionarios => _funcionarios;

  set setFuncionarios(List funcionarios) => this._funcionarios = funcionarios;
}
