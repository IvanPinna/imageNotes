import 'package:flutter/material.dart';

import 'package:image_notes/ui/views/catalog_view.dart';
import 'package:image_notes/ui/views/user_view.dart';
import 'package:image_notes/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


class RouterGenerator {
  static Route<dynamic>  generateRoute(RouteSettings settings){

    switch(settings.name){
      case '/catalog':
        return _fadeRoute(CatalogView(), '/catalog');

      case '/user':
        return _fadeRoute(UserView(), '/user');

      default:
        return _fadeRoute(View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName){
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: ( _ , __, ___) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: ( _, animation, __, ___) => 
      (kIsWeb)
      ? FadeTransition(
          opacity: animation,
          child:child,
        )
      : CupertinoPageTransition(primaryRouteAnimation: animation, 
          secondaryRouteAnimation: __, 
          linearTransition: true,
          child: child, 
        )
      );
  }

}