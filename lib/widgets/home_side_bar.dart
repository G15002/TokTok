import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'playlists.dart';

import '../models/video.dart';
import './more_reacts.dart';

import '../fb_reaction_box.dart';

class HomeSideBar extends StatefulWidget {
  const HomeSideBar({Key? key, required this.video}) : super(key: key);
  final Video video;
  //final Function onreactIconTapp;
  @override
  State<HomeSideBar> createState() => _HomeSideBarState();
}

class _HomeSideBarState extends State<HomeSideBar> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this, 
      duration: Duration(seconds: 5),
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
      .textTheme
      .bodyText1!
      .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _profileImageButton(widget.video.postedBy.profileImageUrl),
          _sidebarItem('angry', widget.video.likes, style, 0), //widget.video.likes, style
          _sidebarItem('comment', widget.video.comments, style, 0), //widget.video.comments, style
          _sidebarItem('favourite', widget.video.favors, style, 1), //widget.video.favors, style
          _sidebarItem('share', 'Share', style, 0),
          AnimatedBuilder(
            animation: _animationController, 
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 50, 
                  width: 50,
                  child: Image.asset('assets/disc.png'),
                ),
                CircleAvatar(
                  radius: 12, 
                  backgroundImage: 
                    NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu338JHHj26aDAEGOWJhxq9NmqU02Gj0upm7MWinZ8Dk27rt0J05v0QET0sW3vHbNQlD4&usqp=CAU'
                    ),
                ),
              ],
            ),
            builder: (context, child){
              return Transform.rotate(
                angle: 2 * pi *_animationController.value,
                child: child,
              );
            })
        ],
      ),
    );
  }


  _sidebarItem(String iconName, String label, TextStyle style, int index){
    if(index == 1){
      bool _isselected = false;
      return 
        IconButton(
          onPressed: () => _startPlaylist(context),
          icon: SvgPicture.asset('assets/favourite.svg')
        );
    }
    return Column (
      children: [
        SvgPicture.asset(
          'assets/$iconName.svg',
          color: Colors.white.withOpacity(0.95),),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: style,
        ),
      ],
    );
  }

  _profileImageButton(String imageUrl){
    return Stack(
      clipBehavior: Clip.none, 
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 50, 
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,),
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              fit: BoxFit.cover,
              image:  NetworkImage(imageUrl),
              
              //'https://picsum.photos/id/1062/400/400' (link dự phòng)
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(25),  
            ),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],  
    );
  }

  void _startPlaylist (BuildContext ctx){
    showModalBottomSheet(
      context: ctx, 
      builder: (_){
        return Container(
          decoration: BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), 
              topRight: Radius.circular(15),
            )
          ),
          child: GestureDetector(
            onTap: () {
              
            },
            child: Playlists(),
            behavior: HitTestBehavior.deferToChild,
          ),
        );
      });
  }
  
}