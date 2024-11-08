

import 'package:flutter/material.dart';

class CatalogView extends StatelessWidget{
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 300,
                  width: 150,
                  decoration: const BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage('assets/Foto.png'),
                    ),
                  ),
                ),
                Text('Histograma'),
              ],
            ),
            SizedBox(height: 20), // Espacio entre las filas
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('DSC_068'),
                Text('Nota de audio'),
              ],
              ),
            SizedBox(height: 20), // Espacio entre las filas
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Puntuacion'),
                Text('Comentario de texto'),
              ],
            ),
          ],
    );
  }
}