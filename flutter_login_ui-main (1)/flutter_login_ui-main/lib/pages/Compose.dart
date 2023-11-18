
// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/constant/link.dart';
import 'package:flutter_login_ui/pages/component/crud.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/lunchemail.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Support.dart';
import 'forgot_password_page.dart';

import 'registration_page.dart';
import 'widgets/header_widget.dart';

class composePage extends StatefulWidget{
  const composePage({Key? key}): super(key:key);

  @override
  _composePageState createState() => _composePageState();
}

  class _composePageState extends State<composePage>{
  TextEditingController controllerTo = TextEditingController();
  TextEditingController controllerSubject = TextEditingController();
  TextEditingController controllerMessage = TextEditingController();
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  Crud _crud = Crud();
   lunch()async{
    var response = await _crud.postRequest(linkaeditlunchemail , {
                "controllerTo" :controllerTo.text,
                "controllerSubject" :controllerSubject.text,
                "controllerMessage" :controllerMessage.text,
    });
    if (response['status'] == "success"){ 
      Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(          
                                        builder: (context) =>launchEmail(  
                                        )
                                    ),
                                        (Route<dynamic> route) => false
                                );
    }else{
      print("signUp Fail");
    }

  }
  @override
  Widget build(BuildContext context) =>Scaffold(
    backgroundColor: Color.fromRGBO(227, 199, 234, 1),
    appBar: AppBar(
         backgroundColor: Theme.of(context).accentColor,
         title: Text("             Launch Email ",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>SupportPage()));},
        ),
    ),
      body: SingleChildScrollView(
        
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
           buildTextField(title :  'To :' ,controller: controllerTo),
           
          const SizedBox(height: 16),
           buildTextField(title :  'subject :', controller: controllerSubject),
            const SizedBox(height: 16),
            buildTextField(
            title :  'Message :', 
            controller: controllerMessage,
            maxLines:8,
            
            ),
            
            const SizedBox(height: 32),
            Container(
              decoration: ThemeHelper().buttonBoxDecoration(context),
                          
             child: ElevatedButton(
               style: ThemeHelper().buttonStyle(),
               
                 child: Padding(
                              padding: const EdgeInsets.fromLTRB(120, 10,120, 10),
               // minimumSize: Size.fromHeight(50),
               // textStyle: TextStyle(fontSize: 20,),
               // backgroundColor: Theme.of(context).accentColor,
                  child: Text('SEND', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 30,letterSpacing: 2.2,),),
              ),
               onPressed: ()async { 
                              await lunch(); 
                            },
            /* onPressed: () => launchEmail(
              toEmail :controllerTo.text,
              subject :controllerSubject.text,
              message :controllerMessage.text,
             ),*/
            ),
            ),
          ],
        ),
      ),
    );
    
Widget buildTextField({
  int maxLines =1,
  required String title,
  required TextEditingController controller
}) =>
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
     title,
     style: TextStyle(fontSize: 23, fontWeight:FontWeight.bold,color: Color.fromARGB(247, 170, 0, 249),)
      
    ),
    const SizedBox(height: 8),
    TextField(
      
      controller: controller,
      maxLines: maxLines,
     
      decoration: InputDecoration(
        
        filled: true, //<-- SEE HERE
        fillColor: Color.fromARGB(255, 255, 255, 255),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3,color:Color.fromARGB(255, 181, 96, 237),),
        borderRadius: BorderRadius.circular(50),
      ),
       
  ),
    ),
  ]
  
    );
  

  }
  
  
