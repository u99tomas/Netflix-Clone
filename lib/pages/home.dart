import 'package:flutter/material.dart';
import 'package:netflix_3_2_21/Components/MainPoster.dart';
import 'package:netflix_3_2_21/Components/RectImage.dart';
import 'package:netflix_3_2_21/Components/RoundedIcon.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: bottomBar(),
      body : ListView(
        children: <Widget>[
          MainPoster(),

          list(
            title:"Avances",
            images: <Widget>[

                  RoundedIcon(
                    url: "https://panamericanworld.com/wp-content/uploads/2019/01/elite-netlix-t.jpg",
                    color: Colors.redAccent,
                  ),

                  RoundedIcon(
                    url: "https://i.blogs.es/b8f4d2/cartel-into-the-night/1366_2000.jpeg",
                    color: Colors.yellow,
                  ),

                  RoundedIcon(
                    url: "https://upload.wikimedia.org/wikipedia/en/d/d6/Shingeki_no_Kyojin_manga_volume_1.jpg",
                    color: Colors.blueGrey,
                  ),

                  RoundedIcon(
                    url: "https://freakelitex.com/wp-content/uploads/2017/08/Kakegurui-Yumeko-Jabami.png",
                    color: Colors.blueGrey,
                  ),
            ],
          ),

          list(
            title:"Tendencias",
            images: <Widget>[
              RectImage(url: 'https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/01/03-deathnote-1280-1490294885083.jpg',),
              RectImage(url: 'https://static.themoscowtimes.com/image/article_1360/95/nacosKopie.JPG',),
              RectImage(url: 'https://okdiario.com/img/2019/07/17/series-juveniles-de-netflix-655x368.jpg',),
              RectImage(url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/ap-love-sick-762-1549624133.jpg?crop=1xw:1xh;center,top&resize=980:*',),
              
            ],
          ),

        ],
        ),
        
      backgroundColor: Colors.black,
    );

  }

  Column list({String title, List<Widget> images }){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          
          Container(
            height: 110,
            child: ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index){
                return images[index];
              },
            ),
          )
      ],
    );


  }


  BottomNavigationBar bottomBar(){

    return BottomNavigationBar(
      
      currentIndex: 0,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: const <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.local_movies),
          label: 'Proximamente',
        ),


        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Descargas',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Mas',
        ),


      ],
    );

  }

}