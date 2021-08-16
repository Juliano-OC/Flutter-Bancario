import '../conta.dart';

class Contas {
  static List<Conta> _contas = [];

  void cadastrar(Conta conta) {
    _contas.add(conta);
  }

  Iterable<Conta> buscar(String numero) {
    return _contas.where((objConta) => objConta.numero == numero);
  }
}