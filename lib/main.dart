import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'navigation_container.dart';
import './pages/favourite_survey.dart';

//import 'widgets/more_reacts.dart';
void main(){
  runApp (MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        textTheme: GoogleFonts.varelaRoundTextTheme(),  
      ),
    //home: FavouriteSurvey(),
    home: FavouriteSurvey(),
    );
  }
}