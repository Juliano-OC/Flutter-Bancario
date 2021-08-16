import '../funcionario.dart';

class Funcionarios {
  static List<Funcionario> _funcionarios = [];

  void cadastrar (Funcionario funcionario) {
    _funcionarios.add(funcionario);
  }

  Iterable<Funcionario> buscar(int matricula) {
    return _funcionarios.where((objFuncionario) => objFuncionario.matricula == matricula);
  }
}