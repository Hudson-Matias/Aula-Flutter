import 'package:flutter/material.dart';
import 'package:appcontabancaria/models/conta_bancaria.dart';
import 'package:appcontabancaria/models/conta_corrente.dart';
import 'package:appcontabancaria/models/conta_poupanca.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ContaBancaria<ContaCorrente> contaCorrente = ContaBancaria(
      tipoDeConta: ContaCorrente('12345-6'),
      saldo: 1000.0,
    );

    final ContaBancaria<ContaPoupanca> contaPoupanca = ContaBancaria(
      tipoDeConta: ContaPoupanca('65432-1'),
      saldo: 5000.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicação Bancária Genérica'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(contaCorrente.toString()),
            const SizedBox(height: 10),
            Text(contaPoupanca.toString()),
          ],
        ),
      ),
    );
  }
}
