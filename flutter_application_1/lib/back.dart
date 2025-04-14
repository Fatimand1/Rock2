
import 'dart:math' as math;
import 'package:flutter/material.dart';

class Rock extends StatefulWidget {
  const Rock({super.key});


   @override
  State<Rock> createState() => _RockState();
}

class _RockState extends State<Rock>{

String question = '❓';
int index=0;

int userindex=0;
int compindex=0;

 List<String> choice=[
'✊',
'✋',
'✌️',
];


String user='❓';
String comp='❓';
String display='';

rockPress()
  {
    setState(() {
      user = choice[0];
      comp = choice[math.Random().nextInt(3)];
      if (comp == user) {
        display = 'Its a tie😑';
      } 
      else if (comp == choice[1]) {
        display = 'You Lose😓';
        compindex++;
      } 
      else {
        display = 'You Win🥳';
        userindex++;
      }
    });
  }

  paperPress()
  {
    setState(() {
      user = choice[1];
      comp = choice[math.Random().nextInt(3)];
      if (comp == user) {
        display = 'Its a tie😑';
      } 
      else if (comp == choice[2]) {
        display = 'You Lose😓';
        compindex++;
      } 
      else {
        display = 'You Win🥳';
        userindex++;
      }
    });
  }

  scissorsPress()
  {
    setState(() {
      user = choice[2];
      comp = choice[math.Random().nextInt(3)];
      if (comp == user) {
        display = 'Its a tie😑';
      } 
      else if (comp == choice[0]) {
        display = 'You Lose😓';
        compindex++;
      } 
      else {
        display = 'You Win🥳';
        userindex++;
      }
    });
  }

  resetButton(){
    setState(() {
      user='❓';
      comp='❓';
      compindex=0;
      userindex=0;
      display='';

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height:100,
              ),
              Text(
                style: TextStyle(
                  fontSize: 30,
                ),
                'Lets Play Rock-Paper-Scissors'),

                SizedBox(
                  height: 70,
              
                ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    'You: $user'),
                  
                ],
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
            
                children: [
                  Text(
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    'Computer: $comp'),
                  
                ],
              ),
              SizedBox(
                height:50,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: rockPress,
                    child: Image(
                      width:70,
                      height:70,
                      image: AssetImage(                    
                        'assets/rock.png'),
                      ),),
                  TextButton(
                    onPressed: scissorsPress,
                    child: Image(
                      width:70,
                      height:70,
                      image: AssetImage('assets/scissors.png'))),
                  TextButton(
                    onPressed: paperPress,
                    child: Image(
                      width:70,
                      height:70,
                      image: AssetImage('assets/paper.png'))),
                ],
              ),

              SizedBox(
                height:40,
              ),

              Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                '$display'),


              SizedBox(
                height:40,
              ),
        
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    'Your Score: $userindex'),

                    SizedBox(
                  width: 40,
                ),

                  Text(
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    'Computer Score: $compindex'),
                ],
              ),

               SizedBox(
                  height:30,
              
                ),

              IconButton(
                iconSize: 40,
                  icon: Icon(Icons.refresh),
                    onPressed: resetButton,
                             )

            ],
          ),
        
        ),
      )

    );


  }

}

  



 

