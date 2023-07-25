import 'package:assignments/music%20player/grid_view.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget{
  const MusicPlayer({super.key});
  @override
  createState()=>_MusicPlayerState();
}
class _MusicPlayerState extends State<MusicPlayer>{
int _currentIndex=0;
@override
  Widget build(BuildContext context){
    return Scaffold(
bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.black,
  selectedItemColor: Colors.pink[100],
  unselectedItemColor: Colors.white,
  currentIndex: _currentIndex,
  onTap: (value) {
    setState((){
      _currentIndex=value;
    });
  },
 type: BottomNavigationBarType.fixed,
  items: 
[
  BottomNavigationBarItem(icon: Icon(Icons.home),
  label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.search),
  label: ""),
  BottomNavigationBarItem(icon: Column(
    children: [
Text("Playlists",
style: TextStyle(
  color: Colors.white
),),
      SizedBox(height: 5,)
    ,  Icon(Icons.circle,
    size: 5,),
      
    ],
  ),
  label: ""),
  BottomNavigationBarItem(icon: Icon(Icons.more_horiz),
  label: "")
]
),
    body: SafeArea(child: 
    Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
    child:SingleChildScrollView(
      child: Column(
        
        children: [
          SizedBox(height: 10,),
    Padding(padding: EdgeInsets.only(left:15),child: Column(
            
            children:[

          Text("Playlists",
      
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.pink[100]
          ),)
          ]
          )
    ),
    SizedBox(height: 25,),
    
    Container(
      padding: EdgeInsets.only(left: 40,right: 40),
      decoration: BoxDecoration(
        color: Colors.black87
      ),
      child:
    TextFormField(
    
      decoration:
       InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),

        ),
        filled: true,
        fillColor: const Color.fromARGB(96, 117, 110, 110)
        ,
        suffixIcon: Icon(Icons.search,
        color: Colors.pink[100],
        
      ),
      
        labelText: "Search....",
        labelStyle: TextStyle(
          color: Colors.pink[100]
        )
      ),
    )
    ),
    SizedBox(height: 30,),
   GridView.count(crossAxisCount: 2,
   crossAxisSpacing: 15,
   mainAxisSpacing: 15,
    shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(10),
   children: [
GridTiles(imageName: "assets/images/musicplayer/top50.jpg"),
GridTiles(imageName: "assets/images/musicplayer/popmusic.jpg"),
GridTiles(imageName: "assets/images/musicplayer/lofi.jpg"),
GridTiles(imageName: "assets/images/musicplayer/rock.jpg"),
GridTiles(imageName: "assets/images/musicplayer/classical.jpg"),
GridTiles(imageName: "assets/images/musicplayer/music.jpg")
   ],)
        ],
      ),
    )
    ),
    )
    );
  }
}