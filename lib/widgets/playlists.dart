import 'package:flutter/material.dart';

class Playlists extends StatefulWidget {
  const Playlists({super.key});

  @override
  State<Playlists> createState() => _PlaylistsState();
}

class _PlaylistsState extends State<Playlists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(5),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(15), 
      //     topRight: Radius.circular(15),
          
      //   )
        
      // ),
      //elevation: 5,
      child: Container(
        
        padding: EdgeInsets.only(top: 10, bottom: 30),
        //margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Text(
              '5 Playlists',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            Expanded(
              child: GridView(
                
                padding: EdgeInsets.only(top:20, ),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 190
                ),
                  
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/my_video_img/l1.png'),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      //color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/my_video_img/l2.png'),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/my_video_img/l3.png'),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      //color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/my_video_img/l4.png'),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/my_video_img/l5.png'),
                      ),
                      
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage('assets/my_video_img/l6.png'),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}