import 'package:flutter/material.dart';
import 'package:image_notes/ui/shared/custom_card.dart';



class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        CustomCard(imagen: 'assets/Foto.png', name: 'DSC_068', rating: 3),
        CustomCard(imagen: 'assets/Foto.png', name: 'DSC_068', rating: 3),
        CustomCard(imagen: 'assets/Foto.png', name: 'DSC_068', rating: 3),
      ]
    );
  }
}