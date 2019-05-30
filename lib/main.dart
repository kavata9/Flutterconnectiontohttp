import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
  return new Scaffold(
    appBar: new AppBar(
      title: new Text("Retrive Json where HTTPGet"),

    ),
    body: new ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context,int index){
        return new Container(
          child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                  child: new Container(
                    child: Text("Hello"),
                    padding: const EdgeInsets.all(20.0),

                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
  }

}