class Funcionario {
  String _nome;
  String _cargo;

  Funcionario(String nome, String cargo) {
    this._nome = nome;
    this._cargo = cargo;
  }

  String get getNome => _nome;

  set setNome(String nome) => this._nome = nome;

  String get getCargo => _cargo;

  set setCargo(String cargo) => this._cargo = cargo;
}
