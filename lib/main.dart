import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primer app prueba',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RojasXD'),
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.people_alt_outlined),
          onPressed: () {
            _personas.add(Persona('Angellll', 'Rojassss', '43308'));
          },

        ),

      body: ListView.builder(
      
      itemCount: _personas.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title:
            Text(_personas[index].name + ' ' + _personas[index].lastName),
            subtitle: Text(_personas[index].cuenta),
            leading: CircleAvatar(
              child: Text(_personas[index].name.substring(0,1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            );
        
          },
      
        ),

      ),
    );

  }
}

class Persona {
  String name;
  String lastName;
  String cuenta;

  Persona(this.name, this.lastName, this.cuenta);
}

List<Persona> _personas = [
  Persona('Angel','Rojas','20172976' ),
  Persona('Personaaa','1','20221111'),
];

