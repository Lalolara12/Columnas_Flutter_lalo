import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda Virual',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda Valorant Virtual'),
      ),
      body: SingleChildScrollView( // Permite desplazarse si hay mucho contenido
        child: Column(
          children: [
            // Primer recuadro
            InfoBox(
              text: 'Zapatos',
              imageUrl: 'https://supershoes.mx/2640-large_default/zapatos-casuales-de-piel-flexi-63202-843-negro-caballero.jpg', // URL de imagen
            ),
            // Segundo recuadro
            InfoBox(
              text: 'Playera',
              imageUrl: 'https://nao.com.mx/cdn/shop/products/14-Verde-800x800.jpg?v=1605882871', // URL de imagen
            ),
            // Tercer recuadro
            InfoBox(
              text: 'Sudadera',
              imageUrl: 'https://fos.com.mx/cdn/shop/files/carbonjaspeado_front_sudadera3320.png?v=1699923596', // URL de imagen
            ),
            // Puedes agregar más recuadros si es necesario
          ],
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String text;
  final String imageUrl;

  InfoBox({required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.network(imageUrl), // Cargar imagen desde la URL
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}