import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ParseJson extends StatefulWidget {
  const ParseJson({Key? key}) : super(key: key);

  @override
  State<ParseJson> createState() => _ParseJsonState();
}

class _ParseJsonState extends State<ParseJson> {
  late Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parsing Json Data...'),
      ),
    );
  }
  Future getData() async {
    Future data;
    String url = 'https://jsonplaceholder.typicode.com/posts';
    Network network = Network(url);
    data = network.fetchData();
    print(data);
    return data;
  }
}

class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    print(url);
    final response = await get(Uri.parse(Uri.encodeFull(url)));
    if (response.statusCode == 200) {
      print(response.body[0]);
      return json.encode(response.body);
    } else{
      return response.statusCode;
    }
  }
}