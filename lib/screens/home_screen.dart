import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10,
        ),
        backgroundColor: const Color.fromARGB(255, 73, 190, 241),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Numero te taps:',
                style: estiloTexto,
              ),
              Text(
                '$contador',
                style: estiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(159, 83, 206, 85),
          foregroundColor: const Color.fromARGB(212, 231, 236, 231),
          onPressed: () {
            contador++;
            print('Precionaste el botón');
            print(contador);
          },
          child: const Icon(Icons.add),
        ));
  }
}
