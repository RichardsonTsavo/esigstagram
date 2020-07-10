import 'package:flutter/material.dart';


class ViewPostPageScreen extends StatelessWidget {
  int userId;
  String title;
  String body;
  int id;

  ViewPostPageScreen(this.userId,this.title,this.body,this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back,color: Colors.black,),),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo/logoHome.png",
          width: 100,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Center(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                    backgroundImage: AssetImage("assets/users/user${userId}.jpg")
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Titulo:",style: TextStyle(color: Colors.black,fontSize: 30),),
                Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                Text("Corpo:",style: TextStyle(color: Colors.black,fontSize: 30),),
                Text(body,textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                Text("Id da postagem:",style: TextStyle(color: Colors.black,fontSize: 30),),
                Text(id.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
