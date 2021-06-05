import 'package:flutter/material.dart';
import 'NavBarTop.dart';




class MainPoster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        header(),
        info(),
        buttons(),


        ],
      );

  }

  Widget header(){
    return  Stack(
        children: [
          Image.network('https://i.blogs.es/62ee65/one-piece/1366_2000.jpeg', fit: BoxFit.cover, height: 250,),
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black38, Colors.black],
                ),
              
            ),
          ),
          SafeArea(child: NavbarTop()), 
        ],
      );

  }

  Widget info(){
    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: <Widget>[
        Text("Telenovelesco", style: TextStyle(color: Colors.white, fontSize: 10.0),),

        SizedBox(width: 5,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 5,),

        Text("Suspenso insosestenible", style: TextStyle(color: Colors.white, fontSize: 10.0),),

        SizedBox(width: 5,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 5,),

        Text("De Suspenso", style: TextStyle(color: Colors.white, fontSize: 10.0),),

        SizedBox(width: 5,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 5,),

        Text("Adolescentes", style: TextStyle(color: Colors.white, fontSize: 10.0),),
      ],
    );
  }

  Widget buttons(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white,),
              SizedBox(height: 8.0,),
              Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 10.0),)
              ],
            ),

          FlatButton.icon(
            onPressed: (){},
            icon: Icon(Icons.play_arrow),
            label: Text("Reproducir"),
            color: Colors.white, 
            ),

          

          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white,), 
              SizedBox(height: 8.0,),
              Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 10.0),)
              ],
            ),
          

        ],
        
      ),
      );
  }
}