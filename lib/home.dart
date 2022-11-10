import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nodejs/customListTile.dart';
import 'package:nodejs/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override

   List data = [];
  getdata() async {
    var url = Uri.parse('https://api-kh.herokuapp.com/information/all');
    var respons = await http.get(url);
    print(respons.body);
    var body = jsonDecode(respons.body);
    print(body);
     data.add(body);
print(data);
    return body;
  }

  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.abc_outlined),
          ),
          title: Text('data'),
        ),
        body: FutureBuilder(
          future: getdata(),
          builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount:snapshot.data.length ,
              itemBuilder: (context, i) {
              return ListTile(title:snapshot.data['name'] ,);
            });
          } else {
            return Center(
              child: Text('data'),
            );
          }
        })

        //FutureBuilder(
        //     future: getdata(),
        //     builder: (context, AsyncSnapshot snapshot) {
        //       Eman r = snapshot.data;
        //       Eman.formMap(r);
        //       if (snapshot.hasData) {
        //         return ListView.builder(
        //             itemCount: snapshot.data.length,
        //             itemBuilder: (context, index) {
        //               return Text('ddd');
        //             });
        //       } else {
        //         return const Center(child: CircularProgressIndicator());
        //       }
        //     })
        );
  }
}

//https://api-kh.herokuapp.com/information