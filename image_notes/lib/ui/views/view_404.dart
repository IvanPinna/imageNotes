
import 'package:flutter/material.dart';
import 'package:image_notes/ui/shared/custom_flat_button.dart';

class View404 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('404', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('No se encontró la página', style: TextStyle(fontSize: 20)),
            CustomFlatButton(text: 'regresar', onPressed: () => Navigator.pushNamed(context, 'catalog'))
          ],
        )
    );
  }
}