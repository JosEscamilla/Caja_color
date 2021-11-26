import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CAJA DE TEXTO',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CAJA DE TEXTO',
          ),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            width: 400, //Ajusta el tamaño del cuadro
            height: 400, //Ajusta el tamaño del cuadro
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Color.fromARGB(250, 0, 0, 0),
                  width: 3,
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(6, 6),
                    blurRadius: 3,
                  ),
                ]),
            child: Text('TEXTO DE NOTAS' * 3),
            padding: EdgeInsets.all(20),
            constraints: BoxConstraints(
              maxWidth: 300,
              maxHeight: 300, //hace delimitaciones
            ), //Ajustamos los centros de las letras
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen1());
}
