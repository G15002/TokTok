import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation_container.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'manage_interesting_topic.dart';



class Settings extends StatelessWidget {
  const Settings({super.key});
 

  @override
  Widget build(BuildContext context) {
    List <String> name_setting = [
      'Manage Account', 'Manage Interesting topic', 'Survey', 'Qr Code', 'Language', 'Dark Mode', 
      'Content Prederences', 'Auto Scroll', 'Report a Problem', 'Help Center', 'SafetyCenter',
      'Community Guidelines', 'Terms of Services', 'Privacy Policy', 'Logout', 
    ];
    List <String> name_icon = ['s1', 's2', 's3', 's4', 's5', 's6', 's7', 
      's8', 's9', 's10', 's11', 's12', 's13', 's14', 's15'
    ];
    return Scaffold(
      appBar: AppBar(
        title: 
          Align(
            child: Text(
              'My Settings',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
            alignment: Alignment.topCenter,  
          ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20,),
          onPressed: (() {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => NavigationContainer(),
              ),
            );
          }),
        ),
        actions: [
              IconButton(
                onPressed: () {
                  
                },
                icon: Icon(Icons.person, color: Colors.black,),
              )
              // child: SvgPicture.asset(
              //   'assets/menu.svg',
              //   color: Colors.black,
              //   width: 15,
              // ),
          ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        //color: Colors.amber,
        child: ListView.builder(
          itemCount: name_setting.length,
          itemBuilder: ((context, index) {
            return Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            if(index==1){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => ManageInterestingTopicPage(),
                                ),
                              );
                            }
                          }, 
                          icon: SvgPicture.asset(
                            'assets/settingimg/${name_icon[index]}.svg', 
                            color: index<14?Colors.black:Colors.red,
                            width: 20, height: 20,
                          ),
                        ),
                        //Icon(Icons.add),
                        
                        SizedBox(width: 15),
                        TextButton(
                          onPressed: (){
                            if(index==1){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => ManageInterestingTopicPage(),
                                ),
                              );
                            }
                          }, 
                          child: Text(
                            name_setting[index],
                            style: TextStyle(fontSize: 18),
                          ),
                          style: (ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(index<14?Colors.black:Colors.red),
                            
                          )),
                        ),
                        // Text(
                        //   name_setting[index],
                        //   style: TextStyle(
                        //     fontSize: 20,
                        //     color: index<14?Colors.black:Colors.red,
                        //   ),
                        // ),
                      ],
                    ),
                    IconButton(
                      onPressed: (){
                        if(index==1){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => ManageInterestingTopicPage(),
                                ),
                              );
                            }
                      }, 
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: index<14?Colors.black:Colors.white,
                        size: 20,
                      ) 
                    ),
                     
                  ],
                ),
                SizedBox(height: 5),
              ],
            );
          })
        ),
        // child: ListView(
        //   children: [
        //     Column(
        //       children: [
        //         Row(
        //           children: [
        //             Text(name_setting[0]),
        //           ],
        //         )
        //       ],
        //     )
        //   ],
        // ),
      )
    );
  }
}
//SvgPicture.asset('assets/settingimg/s1.png')