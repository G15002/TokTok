import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
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
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/v1.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/v2.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/v3.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/v4.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/v5.png'),
            ),
            
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/v6.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
      ],
    );
  }
}