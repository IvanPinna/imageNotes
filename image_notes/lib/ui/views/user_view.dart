import 'package:flutter/material.dart';

class UserView extends StatelessWidget{
  const UserView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          FittedBox(
            fit:BoxFit.contain,
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'User',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
            ),
          )
        ],
      );
  }
}