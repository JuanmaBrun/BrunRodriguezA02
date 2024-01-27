import 'package:brunrodrigueza02/widgets/btn_operation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _counterController =
      TextEditingController(text: '0');

  void _incrementCounter() {
    setState(() {
      int currentValue = int.parse(_counterController.text);
      _counterController.text = (currentValue + 1).toString();
      print("Valor + 1:" + _counterController.text);
    });
  }

  void _decrementCounter() {
    setState(() {
      int currentValue = int.parse(_counterController.text);
      if (currentValue > 0) {
        _counterController.text = (currentValue - 1).toString();
        print("Valor - 1:" + _counterController.text);
      } else {
        print("El valor no puede ser menor que 0");
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counterController.text = '0';
      print("Valor reseteado");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF2F2F2F),
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'CONTADOR',
                    style: TextStyle(
                      fontFamily: 'PoppinsBold',
                      color: Colors.white,
                      fontSize: 64,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(height: 20),
                  Text(
                    _counterController.text,
                    style: const TextStyle(
                      fontFamily: 'PoppinsThin',
                      color: Colors.white,
                      fontSize: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonOperation(texto: "+", onPressed: _incrementCounter),
                      const SizedBox(width: 10),
                      ButtonOperation(texto: "Reset", onPressed: _resetCounter),
                      const SizedBox(width: 10),
                      ButtonOperation(texto: "-", onPressed: _decrementCounter),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Text(
                'Bienvenido usuario',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF5B5B5B),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
