import 'package:flutter/material.dart';
import 'package:flutter_application_1/_mock_data/mock.dart';
import './widgets/more_reacts.dart';



class ReactContainer extends StatefulWidget {
  const ReactContainer({super.key});

  @override
  State<ReactContainer> createState() => _ReactContainerState();
}

class _ReactContainerState extends State<ReactContainer> {

  String _selectedReactIconIndex = 'heart';
  
  void _onreactIconTapped (String index){
    setState(() {
      switch(index){
        case 'heart':
          index = 'haha';
          break;
        case 'haha':
          index = 'sad';
          break;
        case 'sad':
          index = 'angry';
          break;
        case 'angry':
          index = 'like';
          break;
        default:
          index = 'heart';
      }
    });
  } 
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.purple,
    );
  }
}