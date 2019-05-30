import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';


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
  var response = await http.get(
    //encode the url
    Uri.encodeFull(url),
    //accept only json response
    headers: {"Accept": "application/json"}
  );

  print(response.body);

  setState(() {
    var convertDataToJson = json.decode(response.body);
    data = convertDataToJson["results"];
  });
  return "Success";

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return new Scaffold(
    appBar: new AppBar(
      title: new Text("Retrive Json where HTTPGet"),

    ),
    body: new ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context,int index){
        return new Container(
          child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                  child: new Container(
                    child: Text(data[index]['name']),
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