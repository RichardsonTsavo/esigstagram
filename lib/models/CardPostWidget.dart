import 'package:esigstagran/pages/ViewPostPage.dart';
import 'package:flutter/material.dart';

class CardPostWidget extends StatelessWidget {
  int userId;
  int id;
  String title;
  String body;

  CardPostWidget(this.userId,this.id,this.title,this.body);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ViewPostPageScreen(userId,title,body,id)
            ));
          },
          child: Material(
            elevation: 10,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                        backgroundImage: AssetImage("assets/users/user${userId}.jpg")
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width-15,
                      height: 80,
                      child: Text(title,textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
