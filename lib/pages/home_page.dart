// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/_mock_data/mock.dart';
import 'package:flutter_application_1/widgets/video_title.dart';
import '../widgets/home_side_bar.dart';
import '../widgets/video_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}):super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> _isFollowingSelected = [1,0,0,0,0];
  int _snappedPageIndex = 0;

  List<Tab> tabs = [
    Tab(child: Text(
      "Following",
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      )
    ),
    Tab(child: Text(
      "Home",
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      )
    ),
    Tab(child: Text(
      "Tet",
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      )
    ),
    Tab(child: Text(
      "Trick",
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      )
    ),
    Tab(child: Text(
      "Meme",
      style:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      )
    ),
  ];



  void setvalue(int index, List<int>a){
    a.fillRange(0, a.length, 0);
    a[index]=1;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
    
          centerTitle: true,
          title: PreferredSize(
            
            preferredSize: Size.fromHeight(30),
            child: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: tabs,
            ),
          ),
          leading: Image.asset('assets/live.png', color: Colors.white,),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notifications, color: Colors.white,)
            )
          ],
          // title: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     GestureDetector(
          //       onTap: () => {
          //         setState((){
          //           setvalue(0, _isFollowingSelected);
          //         })
          //       },
          //       child: Text(
          //         'Following  ',
          //         style: Theme.of(context)
          //           .textTheme
          //           .bodyText1!
          //           .copyWith(
          //             fontSize: (_isFollowingSelected[0]==1)?20:16, 
          //             color: (_isFollowingSelected[0]==1)?Colors.white : Colors.grey,
          //           ),
          //       ),
          //     ),  
          //     // Text(  
          //     //   '  ', 
          //       // style: Theme.of(context)
          //       //   .textTheme
          //       //   .bodyText1!
          //       //   .copyWith(fontSize: 16, color: Colors.grey),
          //     //),
          //     GestureDetector(
          //       onTap: () => {
          //         setState((){
          //           setvalue(1, _isFollowingSelected);
          //         })
          //       },
          //       child:  Text(
          //         ' For you  ',
          //         style: Theme.of(context)
          //           .textTheme
          //           .bodyText1!
          //           .copyWith(
          //             fontSize: (_isFollowingSelected[1]==1)?20:16, 
          //             color: (_isFollowingSelected[1]==1)?Colors.white : Colors.grey,
          //           ),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () => {
          //         setState((){
          //           setvalue(2, _isFollowingSelected);
          //         })
          //       },
          //       child:  Text(
          //         ' Dance  ',
          //         style: Theme.of(context)
          //           .textTheme
          //           .bodyText1!
          //           .copyWith(
          //             fontSize: (_isFollowingSelected[2]==1)?20:16, 
          //             color: (_isFollowingSelected[2]==1)?Colors.white : Colors.grey,
          //           ),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () => {
          //         setState((){
          //           setvalue(3, _isFollowingSelected);
          //         })
          //       },
          //       child:  Text(
          //         ' Beauty',
          //         style: Theme.of(context)
          //           .textTheme
          //           .bodyText1!
          //           .copyWith(
          //             fontSize: (_isFollowingSelected[3]==1)?20:16, 
          //             color: (_isFollowingSelected[3]==1)?Colors.white : Colors.grey,
          //           ),
          //       ),
          //     ),
          //     ],
          //   ),
          ),
        body: PageView.builder(
          onPageChanged: (int page) => {
            setState((){
              _snappedPageIndex = page;
            }),
           },
          scrollDirection: Axis.vertical,
          itemCount: videos.length,
          itemBuilder: ((context, index) {
            
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoTitle(
                  video: videos[index],
                  currentIndex: index,
                  snappedPageIndex:_snappedPageIndex,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.height/4,
    
                        child: VideoDetail(video: videos[index],),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height/1.75,
                        child: HomeSideBar(video: videos[index]),
                      ),
                    ),
                  ],
                ),
              ],
            );
          } ),
        )
      ),
    );
  }
}