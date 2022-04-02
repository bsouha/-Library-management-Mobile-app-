import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_library/ui/google_icon.dart';
class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),//click outside the screen to hide the keyboard
      child: Scaffold(
        resizeToAvoidBottomInset: false,//to make it responsive and the yellow screen
        body:  Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            child: Column(
              children: [

                 const Text('Welcome Back!',
                   style:TextStyle(
                  fontSize: 24.0,
                  fontWeight:FontWeight.bold,
                ) ,
                 ),
                Expanded(child:Hero(
                  tag: 'image',
                    child: Image.asset('assets/reader.png')),),
                 const CupertinoTextField(
                   prefix: Icon(
                       Icons.mail_outline,
                       color: Colors.blueAccent),
                   suffix: Icon(
                       Icons.check_circle,
                       color: Colors.blueAccent),
                   padding:EdgeInsets.symmetric( horizontal: 24.0,
                       vertical: 12.0),

                   decoration: BoxDecoration(
                     border: Border(
                       bottom: BorderSide(
                         color: Colors.blueAccent,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 8.0),
                 const CupertinoTextField(

                   obscureText: true,
                   prefix: Icon(
                       Icons.lock,
                       color: Colors.blueAccent),
                   suffix: Icon(
                       Icons.visibility_off,
                       color: Colors.blueAccent),
                   padding:EdgeInsets.symmetric( horizontal: 24.0,
                       vertical: 12.0),

                   decoration: BoxDecoration(
                     border: Border(
                       bottom: BorderSide(
                         color: Colors.blueAccent,
                       ),
                     ),
                   ),
                 ),
                const SizedBox(height: 8.0),

                Row(

                children:[
                Spacer(),
                TextButton(

                  onPressed: () {},
                  child: const Text('Forget Password'),
                ),
              ],),
                 const SizedBox(height:16.0),


            Hero(
              tag: 'login_button',
              child: TextButton(

                onPressed: () {},
                    child:  const Text('Login'),
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffe59a59),
                        primary:Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0,
                            vertical: 18.0
                        ),
                        shape:  const StadiumBorder(),

                    ),
                  ),
            ),
                const  SizedBox(height: 16.0),
                TextButton(

                  onPressed: () {},
                  child: const Text('Login Via Google'),
                ),


            Hero(
              tag: 'google',
              child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  SocialButton(
                      backgroundColor:Colors.red,
                      icon:FontAwesomeIcons.google,
                      onPressed:(){},
                  )

                ],
              ),
            ),

                    const SizedBox(height: 16.0),
 GestureDetector(
   onTap: ()=> Navigator.of(context).pop,
     child: const Text("vous n'avez pas un compte ? Sign up "),

 ),
         const SizedBox(height: 32.0),
              ],
            ),
          ),
        ),


      ),
    );
  }
}
