import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
void main() => runApp(new MaterialApp(
  home: new HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
final String url = "https://swapi.co/api/people";

List data;
@override
void initState() {
    // TODO: implement initState
    super.initState();
    this.getJsonData();
  }

  Future<String>getJsonData() async{
  var response = await http

  }


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