import 'package:flutter/material.dart';
import 'package:listapersonas/model/persona.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Lista para Widget",
      home: Tela1(),
  
    );
  }
  }

  class Tela1 extends StatefulWidget {

      Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
    List<Persona> lista = [
      Persona(nombre:"Victor", idade: 37, apellido: "Alves", cpf: "000.000.000-00"),
      Persona(nombre:"Alan", idade: 31, apellido: "Canto", cpf: "000.000.000-00"),
      Persona(nombre:"Ignacio", idade: 21, apellido: "Pinheyro", cpf: "000.000.000-00")
    ]; 

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('App Lista para Widget'),
      backgroundColor: Colors.lightBlue,
    ),
    body: ListView.builder(
        itemCount: lista.length, 
        itemBuilder: (context,index){
          return ElevatedButton(
            onPressed: (){},
            child: Text(lista[index].nombre),
          );
      },
      )
    ,);
  }
}