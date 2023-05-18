import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["Pou", "Fortnite", "Pacman", "Mortal Kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        //obtener el tamaño de la lista
        itemCount: games.length,
        //creamos el constructor
        itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
          onTap: () {
            var seleccion = games[index];
            print(seleccion);
          },
        ),
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}
