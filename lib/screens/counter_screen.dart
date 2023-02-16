import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
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
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(159, 83, 206, 85),
              foregroundColor: const Color.fromARGB(212, 231, 236, 231),
              onPressed: () => setState(() => contador--), 
              child: const Icon(Icons.exposure_minus_1),
            ),
         
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(159, 83, 206, 85),
              foregroundColor: const Color.fromARGB(212, 231, 236, 231),
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              },
              child: const Icon(Icons.restart_alt),
            ),
         
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(159, 83, 206, 85),
              foregroundColor: const Color.fromARGB(212, 231, 236, 231),
              onPressed: () => setState(() => contador++),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
