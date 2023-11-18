
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/bignner/beginner_workout_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class KetoDietScreen extends StatelessWidget {
  // const KetoDietScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: SafeArea(
        child: Scaffold(
         backgroundColor: Color.fromARGB(255, 227, 199, 234),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => BeginnerWorkout()));},
        
      
            ),
             backgroundColor: Color.fromARGB(255, 227, 199, 234),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Center(
                    child: Container(
                      height: 210,
                      width: 350,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          //orange.........
                          Color.fromARGB(221, 114, 69, 143),
                          Color.fromARGB(255, 177, 128, 226),
                        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 30.0, left: 58, right: 58),
                            child: Text(
                              "Omelette",
                                style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12, right: 12),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '  10%',
                                          style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                                      ),
                                      Text(
                                        'Carbs',
                                          style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2,
                                    width: 2,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        " 70%",
                                         style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                                      ),
                                      Text(
                                        'Fats ',
                                          style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2,
                                    width: 2,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        " 20%",
                                        style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                                      ),
                                      Text(
                                        'Proteins',
                                          style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                         
                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'About Omelette',
                  style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 22.0, left: 22, right: 22, bottom: 30),
                  child: Text(
                    'It is a dish made of scrambled eggs cooked in butter or oil in a folded pan and sometimes an omelette is added With this mixture of tomatoes, tomatoes or tomatoes.',
                      style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(210, 119, 61, 158),
                                  fontSize:28,
                                ),
                              ),
                  ),
                ),
              ]
            )
          )
        ),
      ),
    );
  }
}
