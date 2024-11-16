import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomCard extends StatelessWidget {
  final String imagen;
  final String name;
  final double rating;

  const CustomCard({
    super.key, 
    required this.imagen, 
    required this.name, 
    required this.rating
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        margin: EdgeInsets.all(20),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Container(
                    height: 300,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagen),
                      ),
                    ),
                  )),
                  Expanded(child: Text('Histograma')),
                ],
              ),

              const SizedBox(height: 20), // Espacio entre las filas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Center(child: Text(name))),
                  Expanded(child: Row(
                    children: [
                      Text('Nota de audio'),
                      SizedBox(width: 10),
                      FloatingActionButton(onPressed: (){}, child: Icon(Icons.mic),)
                    ],
                  )),
                ],
              ),

              const SizedBox(height: 20), // Espacio entre las filas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Center(
                    child: RatingBar.builder(
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  )),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter some text"),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}