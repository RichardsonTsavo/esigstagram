import 'package:esigstagran/pages/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/logo/esigLogo.png",width: 250,),
            Text("Olá! Bem vindo ao Esigstagram",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,)),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomePageScreen()
                 ));
              },
              child: Text("Entrar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
