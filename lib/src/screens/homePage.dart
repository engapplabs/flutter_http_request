import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert'; //Converter JSON para String
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //1. Criar função para pegar os dados
  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Accept": 'application/json'});

    List data = json.decode(response.body);
    print(data[1]["title"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Request'),
      ),
      body: Container(
        child: Center(
          child: new RaisedButton(
            child: new Text('Get Data'),
            onPressed: getData,
          ),
        ),
      ),
    );
  }
}
