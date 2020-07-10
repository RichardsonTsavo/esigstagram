import 'package:esigstagran/models/CardPostWidget.dart';
import 'package:esigstagran/pages/AboutAppPage.dart';
import 'package:esigstagran/stores/HomeStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'dart:math';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  HomeStore _homeStore = HomeStore();

  @override
  void initState() {
    _homeStore.getApi().then((_){
      _homeStore.isLoaded = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutAppPageScreen()
                ));
              },
              icon: Icon(Icons.info,color: Colors.black,),
            )
          ],
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/logo/logoHome.png",
            width: 100,
          ),
          centerTitle: true,
        ),
        body: Observer(
          builder: (_) {
            return _homeStore.isLoaded?Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Carregando...",style: TextStyle(fontSize: 25),),
                  SizedBox(height: 15),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.black),
                  )
                ],
              ),
            ):ListView.builder(
                itemCount: _homeStore.esigApi.length,
                itemBuilder: (context, index) {
                  var rng = Random();
                  int rngValue;
                  rngValue = rng.nextInt(_homeStore.esigApi.length);
                  return CardPostWidget(
                      _homeStore.esigApi[rngValue].userId,
                      _homeStore.esigApi[rngValue].id,
                      _homeStore.esigApi[rngValue].title,
                      _homeStore.esigApi[rngValue].body);
                });
          },
        ));
  }
}
