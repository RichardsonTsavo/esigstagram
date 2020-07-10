import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutAppPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        title: Text("Sobre",style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/devImg.jpg"),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Olá! Meu nome é Richardson Tsavo e esse aplicativo foi desenvolvido "+
                "para um desafio de estágio na Empresa Esig Software.",style:
              TextStyle(fontSize: 18)
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              "assets/logo/logoHome.png",
              width: 120,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Site: ",style: TextStyle(color: Colors.black,fontSize: 20),),
                InkWell(
                    child: new Text("https://www.esig.com.br/portal",style: TextStyle(color: Colors.green,fontSize: 20),),
                    onTap: () => launch("https://www.esig.com.br/portal/")
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Imagens: ",style: TextStyle(color: Colors.black,fontSize: 20),),
                InkWell(
                    child: new Text("https://pt.freeimages.com",style: TextStyle(color: Colors.green,fontSize: 20),),
                    onTap: () => launch("https://pt.freeimages.com/")
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Todos os direitos da Imagem da logo da Esig Software "+
                "reservado a mesma e utilizada somente de forma ilustrativa.",style: TextStyle(color: Colors.black,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
