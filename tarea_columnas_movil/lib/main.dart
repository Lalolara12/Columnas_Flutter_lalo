import 'package:flutter/material.dart';

// Función principal que inicia la ejecución de la aplicación.


class Productos extends StatelessWidget{
  final String usuario;

  Productos ({required this.usuario});


  @override
  Widget build (BuildContext context) {
    return TiendaScreen();
  }
}

// Clase principal de la aplicación que extiende StatelessWidget,
class TiendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Utiliza un Scaffold para definir la estructura básica de la pantalla,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tienda en Línea'), // Título que aparece en la barra de la aplicación.
        ),
        body: ListView( // ListView permite hacer scroll en una lista de widgets.
          children: [
            // Llama a la función productCard para crear una tarjeta de producto.
            productCard(
              'https://yazbek.com.mx/cdn/shop/products/C0605-camisa-oxford-liso-ml-caballero-75algodon-25poliester-cobalto_1.jpg?v=1693281109',
              'Camisa',
              '40.00 Pesos',
              Colors.indigo[50],
            ),
            Divider(), // Crea una línea divisoria entre productos.
            productCard(
              'https://nao.com.mx/cdn/shop/products/14-Verde-800x800.jpg?v=1605882871',
              'Plauera',
              '60.00 Pesos',
              Colors.pink[50],
            ),
            Divider(), // Línea divisoria entre productos.
            productCard(
              'https://fos.com.mx/cdn/shop/files/carbonjaspeado_front_sudadera3320.png?v=1699923596',
              'Sudadera',
              '80.00 Pesos',
              Colors.purple[50],
            ),
          ],
        ),
      ),
    );
  }

  // Función que crea una tarjeta de producto personalizada.
  Widget productCard(String imageUrl, String description, String price, Color? color) {
    return Container(
      color: color,
      padding: EdgeInsets.all(16.0), // Agrega espacio interno alrededor del contenido.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Alinea los elementos hijos al centro.
        children: [
          Image.network(
            imageUrl,
            height: 150,
            width: 150,
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(fontSize: 16), // Tamaño de fuente para la descripción.
          ),
          SizedBox(height: 4), // Espacio entre la descripción y el precio.
          Text(
            price,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Precio en negrita.
          ),
        ],
      ),
    );
  }
}