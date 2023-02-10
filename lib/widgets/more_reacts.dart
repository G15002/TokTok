import 'package:flutter/material.dart';
import '../_mock_data/mock.dart';
import 'package:flutter_svg/flutter_svg.dart';

String _changeIcon (String _cicon){
  switch(_cicon){
    case 'heart':
      _cicon = 'haha';
      break;
    case 'haha':
      _cicon = 'sad';
      break;
    case 'sad':
      _cicon = 'angry';
      break;
    case 'angry':
      _cicon = 'like';
      break;
    default:
      _cicon = 'heart';
  }
  return _cicon;
}

class MoreReacts extends StatefulWidget {
  const MoreReacts({super.key, required this.riconName, required this.rlabel, required this.rstyle});
  final String riconName;
  final String rlabel;
  final TextStyle rstyle;

  @override
  State<MoreReacts> createState() => _MoreReactsState();
}

class _MoreReactsState extends State<MoreReacts> {
  @override
  Widget build(BuildContext context) {
  String _riconName = widget.riconName;  
    return
        Stack(
          clipBehavior: Clip.none, 
          alignment: Alignment.bottomRight,
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  'assets/$_riconName.svg',
                  color: Colors.white.withOpacity(0.95),),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.rlabel,
                  style: widget.rstyle,
                ),
              ],
              
            ),
            // Positioned(
            //   bottom: -10,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.purple,
            //       borderRadius: BorderRadius.circular(25),  
            //     ),
            //     child: Icon(
            //       Icons.sync_outlined,
            //       size: 12,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
          ],
        );

  //   return  Row(
      
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      
  //     children: [
        
  //         Image.asset('assets/hearth.svg'),
  //         Image.asset('assets/like.svg'),
  //         Image.asset('assets/haha.svg'),
  //         Image.asset('assets/sad.svg'),
  //         Image.asset('assets/angry.svg'),
  //     ],
  //  );
  }
}



// return GestureDetector(
//         onTap:() => {
//           _onreactIconTapped(iconName);
//         },

//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 SvgPicture.asset(
//                   'assets/$iconName.svg',
//                   color: Colors.white.withOpacity(0.95),),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   label,
//                   style: style,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );