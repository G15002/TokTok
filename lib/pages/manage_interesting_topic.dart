import 'package:flutter/material.dart';
import '../navigation_container.dart';
//import 'gender.dart';
import 'settings.dart';
class ManageInterestingTopicPage extends StatefulWidget {
  const ManageInterestingTopicPage({super.key});
 // final String title;

  @override
  State<ManageInterestingTopicPage> createState() => _ManageInterestingTopicPageState();
}


class _ManageInterestingTopicPageState extends State<ManageInterestingTopicPage> {
  List<bool> checkchoice = List.filled(20, false);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
          onPressed: (() {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => Settings(),
              ),
            );
          }),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Manage Interesting Topic',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
          
      ),
      body: 
        Container(
          padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              Text(
                'Choose your interests and get the best video recommendations.',
                style: TextStyle(fontSize: 14),),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text('Technology'),
                    //labelStyle: Colors.purple,
                    selectedColor: Colors.purple,
                    selected: checkchoice[0],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[0]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text('Comics',),
                    selectedColor: Colors.purple,
                    selected: checkchoice[1],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[1]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text('Music'),
                    selectedColor: Colors.purple,
                    selected: checkchoice[2],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[2]=newBoolValue;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text('Art'),
                    selectedColor: Colors.purple,
                    selected: checkchoice[4],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[4]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Food & Drink',
                      ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[5],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[5]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Culture',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[6],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[6]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Travel',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[7],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[7]=newBoolValue;
                      });
                    },
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Family',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[8],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[8]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Health',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[9],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[9]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Sience & Education',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[10],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[10]=newBoolValue;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Sports',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[11],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[11]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Anime & Movie',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[12],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[12]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Beauty',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[13],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[13]=newBoolValue;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Animals',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[14],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[14]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Comdy',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[15],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[15]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Media',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[16],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[16]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      'Outdoors',
                    ),
                    selectedColor: Colors.purple,
                    selected: checkchoice[17],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[17]=newBoolValue;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text('Dance'),
                    selectedColor: Colors.purple,
                    selected: checkchoice[3],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[3]=newBoolValue;
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(247, 218, 253, 1),
                    label: Text(
                      '+ Add',
                    ),
                    selectedColor: Color.fromARGB(255, 205, 153, 214),
                    selected: checkchoice[18],
                    onSelected: (newBoolValue){
                      setState(() {
                        checkchoice[18]=newBoolValue;
                      });
                    },
                  ),
                  
                  
                ],
              ),
              SizedBox(height: 120),
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
                        'Save',
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
                      // style: ElevatedButton.styleFrom(
                      //   primary: Colors.purple,
                      //   elevation: 20,
                      //   onPrimary: Colors.purple,
                      // ),
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
