import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar ({Key? key, required this.selectedPageIndex, required this.onIconTap}):super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;


  @override
  Widget build(BuildContext context) {
    final barHeight = MediaQuery.of(context).size.height * 0.075;
    final style = Theme.of(context)
      .textTheme
      .bodyText1!.copyWith(fontSize: 10,fontWeight: FontWeight.w600);
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 5.0,
      //color: selectedPageIndex == 0? Colors.white : Colors.black,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
        ),
        padding: EdgeInsets.all(0),
        height: barHeight, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _bottomBarNavItem(0, 'Home', style, 'home'),
            _bottomBarNavItem(1, 'Discover', style, 'discover'),
            _addVideoNavItem(barHeight),
            _bottomBarNavItem(3, 'Inbox', style, 'message'),
            _bottomBarNavItem(4, 'Profile', style, 'account'),
          ],
        ),
      ),
    );
  }
  _bottomBarNavItem(int index, String label, TextStyle textStyle, String iconName){
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.purple:Colors.grey;

    if(isSelected && selectedPageIndex == 0){
      iconAndTextColor = Colors.purpleAccent;
    }

    return GestureDetector(
      onTap: () => {onIconTap(index)},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        SvgPicture.asset(
          'assets/${isSelected?iconName+'_filled':iconName}.svg',
          color: iconAndTextColor,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          label, 
          style: textStyle.copyWith(color: iconAndTextColor),
        )
      ],
      )
    );
  } 
  _addVideoNavItem(double height){
    return Container(
      alignment: Alignment.bottomCenter,
      height: height,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(90.0),
            bottomRight: Radius.circular(90.0),
            
          ),
          
      ),
      child: Center(  
        child: Container(
          width: 41,
          height: height - 15,
          decoration: BoxDecoration(
            //color: selectedPageIndex == 0? Colors.white:Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ), 
    );
  }
}