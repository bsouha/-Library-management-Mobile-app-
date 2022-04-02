import 'package:flutter/material.dart';
import 'package:your_library/ui/ui/loginScreen.dart';
import 'package:your_library/ui/background.dart';
class Singup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:const Text(
                "Bienvenue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin:const EdgeInsets.symmetric(horizontal: 40),
              child:  const TextField(
                decoration: InputDecoration(
                    labelText: "Le Nom"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin:const  EdgeInsets.symmetric(horizontal: 40),
              child:const  TextField(
                decoration: InputDecoration(
                    labelText: "Le Prénom"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin:const  EdgeInsets.symmetric(horizontal: 40),
              child: const TextField(
                decoration: InputDecoration(
                    labelText: "L'adrèsse Email"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child:const TextField(
                decoration: InputDecoration(
                    labelText: "Mot de passe"
                ),
                obscureText: true,
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration:   BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient:  const LinearGradient(
                          colors: [
                             Color.fromARGB(255, 255, 136, 34),
                             Color.fromARGB(255, 255, 177, 41)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen()))
                },
                child: const Text(
                  "Vous avez un compte ? Login",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}