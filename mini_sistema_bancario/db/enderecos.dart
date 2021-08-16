import '../endereco.dart';

class Enderecos {
  static List<Endereco> _enderecos = [];

  void cadastrar(Endereco endereco) {
    _enderecos.add(endereco);
  }

  Iterable<Endereco> buscar(String cep) {
    return _enderecos.where((objEndereco) => objEndereco.cep == cep);
  }
}
