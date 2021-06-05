import 'package:flutter/material.dart';

class NavbarTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/netflix_logo.png',
           width: 50.0,
          ),
          Text("Programas", style: TextStyle(color: Colors.white, fontSize: 17.0),),
          Text("Peliculas", style: TextStyle(color: Colors.white, fontSize: 17.0),),
          Text("Mi lista", style: TextStyle(color: Colors.white, fontSize: 17.0),),
      ],
    );
  }
}