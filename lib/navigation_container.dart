import 'package:flutter/material.dart';
import './pages/add_video_page.dart';
import './pages/discover_page.dart';
import './pages/inbox_page.dart';
import './pages/profile_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/widgets/custom_bottom_navigation_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});
  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;

  static const List<Widget> _pages = [
    HomePage(), 
    DiscoverPage(), 
    AddVideoPage(), 
    InboxPage(), 
    ProfilePage(),
  ];

  void _onIconTaped(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex, onIconTap: _onIconTaped), 
      );
  }
}