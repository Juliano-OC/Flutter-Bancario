import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _clientes = [];

  void cadastrar(Pessoa pessoa) {
    _clientes.add(pessoa);
  }

  Iterable<Pessoa> buscar(String telefone) {
    return _clientes.where((objPessoa) => objPessoa.telefone == telefone);
  }
}