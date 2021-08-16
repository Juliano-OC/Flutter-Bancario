import 'agencia.dart';
import 'pessoa.dart';

abstract class Conta {
  String _numero;
  Agencia _agencia;
  double _saldo;
  Pessoa _cliente;

  String get numero => this._numero;
  Agencia get agencia => this._agencia;
  Pessoa get cliente => this._cliente;
  double get saldo => this._saldo;
  //Método construtor
  Conta(
    this._numero,
    this._agencia,
    this._cliente,
    this._saldo,
  );

  set numero(String numero) {
    this._numero = numero;
  }

  set agencia(Agencia agencia) {
    this._agencia = agencia;
  }

  set cliente(Pessoa cliente) {
    this._cliente = cliente;
  }

  set saldo(double saldo) {
    this._saldo = saldo;
  }

  //Métodos
  double obterSaldo() {
    return this._saldo;
  }

  double sacar(double valor) {
    // Retirar da valor da conta
    bool podeSacar = (this._saldo >= valor);
    (podeSacar) ? this._saldo -= valor : false;
    return (podeSacar) ? valor : 0;
  }

  bool depositar(double valor) {
    // saldo(300) = saldo(200) + valor(100)
    this._saldo += valor;
    return true;
  }

  bool transferir(double valor, Conta destino) {
    // Da origem
    this.sacar(valor);
    // Na destino
    destino.depositar(valor);
    return true;
  }

  //@override
  //String toString() {
  //  return "Conta ${this._numero}\nAgência $_agencia\nDados do Cliente:\n$_cliente";
  // }
}
