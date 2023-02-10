import 'package:flutter/material.dart';

class FourthTab extends StatelessWidget {
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
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/l1.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/l2.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/l3.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/l4.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/l5.png'),
            ),
            
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/my_video_img/l6.png'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15),
        ),
      ],
    );
  }
}