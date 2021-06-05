import 'package:flutter/material.dart';


class RoundedIcon extends StatelessWidget{

  double size= 110;
  String url;
  Color color;

  RoundedIcon({this.color ,this.url});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [

          Stack(
                
                children: <Widget>[
                  Container(
                    height: size,
                    width: size,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size),
                      border: Border.all(
                        color: color,
                        width: 2.0,
                      ),
                      
                    ),
                    child: ClipOval(
                      child: Image.network(url, fit: BoxFit.cover,)
                    )

                  ),
                  
                ],
              ),

          SizedBox(width: 10.0,)

      ],
    );

  }

}