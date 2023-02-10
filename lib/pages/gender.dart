import 'package:flutter/material.dart';
import '../navigation_container.dart';
import './favourite_survey.dart';
//import 'birthday_survey.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool _gender = true;
  Color setupcolor = Colors.purple;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
          onPressed: (() {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => FavouriteSurvey(),
              ),
            );
          }),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Tell Us About Yourself',
          style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0, right: 10),
        child: Column(
          children: [
            Text('Choose your identity & help us to find accurate content for you.'),
            Container(
              width: 150,
              height: 150,
              
              child: FloatingActionButton.extended(
                onPressed:() {
                  _gender = true;
                  setupcolor = _gender?Colors.purple:Colors.grey;
                },
                
                label: Container(
                  child: Text('Male'),
                  padding: EdgeInsets.all(8.0),
                ),
                icon: const Icon( Icons.male),
                backgroundColor: setupcolor,
                //shape: CircleBorder(),
                
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
               // shape: BoxShape.circle,
              ),
              child: FloatingActionButton.extended(
                onPressed:() {
                  _gender = !_gender;
                  setupcolor = !_gender?Colors.purple:Colors.grey;
                },
                
                label: Container(
                  child: Text('Female'),
                  padding: EdgeInsets.all(8.0),
                ),
                icon: const Icon( Icons.female, size: 30),
                backgroundColor: setupcolor,
                //shape: CircleBorder(),
                
              ),
              
            ),
            SizedBox(height: 100),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (() {
                        
                      }), 
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.purple),
                      ),
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 234, 208, 239)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )
                        ),
                      ), 
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => NavigationContainer(),
                          ),
                        );
                        
                      }, 
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],

        ),
      )
    );
  }
}