import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecargaTelefonica(),
    );
  }
}

class RecargaTelefonica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    // Manejar el evento del botón de regreso
                  },
                ),
                SizedBox(width: 10.0),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Saldo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),




          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Resumen',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25.0),
                Text(
                  'Desde qué cuenta recargas',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25.0),

                 // Ejemplo 1 con imagen pequeña, texto y cuadro de precio
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      color: const Color.fromARGB(255, 226, 33, 243), // Color de fondo de la imagen
                      child: Image.network('https://example.com/ejemplo1.jpg'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Ejemplo 1: Descripción del ejemplo 1',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 85.0),
                        child: Text(
                          '\$10.00',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),   
                  ],
                ), 
                // Ejemplo 2 con imagen pequeña, texto y cuadro de precio
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      color: const Color.fromARGB(255, 226, 33, 243), // Color de fondo de la imagen
                      child: Image.network('https://example.com/ejemplo2.jpg'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Ejemplo 2: Descripción del ejemplo 2',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 85.0),
                        child: Text(
                          '\$15.00',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),   
                  ],
                ), 
                

                // Ejemplo 3 con imagen pequeña, texto y cuadro de precio
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      color: const Color.fromARGB(255, 226, 33, 243), // Color de fondo de la imagen
                      child: Image.network('https://example.com/ejemplo3.jpg'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Ejemplo 3: Descripción del ejemplo 3',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 85.0),
                        child: Text(
                          '\$20.00',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),   
                  ],
                ),
                SizedBox(height: 10.0),
                Divider(),
                Text(
                  'Recordatorio de recarga',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 250.0),
                // Línea después de los ejemplos
                // Imagen junto con texto y botón de selección de palomita
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      color: Colors.blue, // Color de fondo de la imagen
                      child: Image.network('https://example.com/imagen.png'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Guardar como operación',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.check_box_outline_blank), // Puedes cambiar este icono
                      onPressed: () {
                        // Lógica para manejar la selección de la palomita
                      },
                    ),   
                  ],
                ),   
              ],
            ),
          ),
          Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Color.fromARGB(255, 0, 0, 0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Recarga',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}

class EjemploItem extends StatelessWidget {
  final String imagenUrl;
  final String texto;
  final String precio;

  EjemploItem({
    required this.imagenUrl,
    required this.texto,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          color: Colors.grey, // Color de fondo de la imagen
          child: Image.network(imagenUrl, fit: BoxFit.cover),
        ),
        SizedBox(height: 8.0),
        Text(texto),
        Container(
          color: Colors.blue, // Color de fondo del cuadro de precio
          padding: EdgeInsets.all(5.0),
          child: Text(
            precio,
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}