import 'package:flutter/material.dart';
import 'package:image_notes/locator.dart';
import 'package:image_notes/services/navigation_service.dart';
import 'package:image_notes/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (_ , constraints){
        return ( constraints.maxWidth > 520 )
          ? _TableDesktopMenu() 
          : _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'User', 
            onPressed: () => locator<NavigationService>().navigateTo('/user'),
            color: Colors.black,
          ),
    
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Catálogo', 
            onPressed: () => locator<NavigationService>().navigateTo('/catalog'),
            color: Colors.black,
          ),
    
          SizedBox(width: 10),
          CustomFlatButton(
            text: '404', 
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.black,
          ),
      ],)
    );
  }
}

class _MobileMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'User', 
            onPressed: () => locator<NavigationService>().navigateTo('/user'),
            color: Colors.black,
          ),
    
          SizedBox(width: 10),
    
          CustomFlatButton(
            text: 'Contador', 
            onPressed: () => locator<NavigationService>().navigateTo('/catalog'),
            color: Colors.black,
          ),
    
          SizedBox(width: 10),
    
          CustomFlatButton(
            text: 'Catalogo', 
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.black,
          )
    
      ],)
    );
  }
}
