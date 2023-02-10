import 'package:flutter/material.dart';
import '../profile/profile1.dart';
import '../profile/profile2.dart';
import '../profile/profile3.dart';
import '../profile/profile4.dart';
import 'settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          title: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: Text(
                    'Đấm phát thì cúc',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  alignment: Alignment.center,  
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_drop_down_rounded, 
                  color: Colors.black,
                  size: 25,
                ),
              ],
            ),
            
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.white),
          actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ),
                  );
                },
                icon: SvgPicture.asset('assets/menu.svg', width: 15),
              )
              // child: SvgPicture.asset(
              //   'assets/menu.svg',
              //   color: Colors.black,
              //   width: 15,
              // ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // profile photo
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,),
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://anhdepfree.com/wp-content/uploads/2020/09/anh-thanh-phong-tom-dep-scaled.jpg'),
                )
              ),
            ),

            // username
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '@giangka1502',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 15,
                ),
              ),
            ),
            Text('Đại ca giang hồ đụng là trụng'),
            SizedBox(height: 20),
            // number of following, followers, likes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                //Expanded(
                  //child: 
                  Container(
                    width: 100,
                    
                    child: Column(
                      children: [
                        Text(
                          '8',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                //),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          '56',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '  Likes  ',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            // buttons -> edit profile, insta links, bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text('Edit profile',
                      style: TextStyle(color: Colors.purple, fontSize: 10)),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(25)),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 4.0),
                //   child: Container(
                //     padding: EdgeInsets.all(10),
                //     child: Icon(
                //       Icons.camera_alt,
                //       color: Colors.grey[800],
                //     ),
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Colors.grey.shade300),
                //         borderRadius: BorderRadius.circular(5)),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.all(10),
                //   child: Icon(
                //     Icons.bookmark_border,
                //     color: Colors.grey[800],
                //   ),
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Colors.grey.shade300),
                //       borderRadius: BorderRadius.circular(5)),
                // ),
              ],
            ),
            SizedBox(height: 15),
            // default tab controller

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.view_list_rounded, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite_border, color: Colors.black),
                ),
                
                Tab(
                  icon: SvgPicture.asset(
                    'assets/favourite_2.svg',
                    color: Colors.black,
                  ),
                ),
                
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                  FourthTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}