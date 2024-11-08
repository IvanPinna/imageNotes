import 'package:flutter/material.dart';
import 'package:image_notes/locator.dart';
import 'package:image_notes/router/router_generator.dart';
import 'package:image_notes/services/navigation_service.dart';
import 'package:image_notes/ui/layout/main_layout_page.dart';

void main(){
  setupLocator();
  runApp(MyApp()); 
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Notes',
      initialRoute: '/catalog',
      onGenerateRoute: RouterGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey, //Mantiene la referencia a la navegacion que el builder esta creando.
      builder: ( _ , child){
        return MainLayoutPage(
          child: child ?? Container()
        );
      },
    );
  }
}
