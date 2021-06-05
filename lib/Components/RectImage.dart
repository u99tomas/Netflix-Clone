import 'package:flutter/material.dart';


class RectImage extends StatelessWidget{

  String url;

  RectImage({this.url});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [

        Image.network(
              url,
              width: 90,
              height: 150,
              fit: BoxFit.cover,
        ),

        SizedBox(width: 10.0,)

      ],
    );


  }

}