import 'package:allapptest/widgets/drawer.dart';
import 'package:allapptest/pages/login.dart';
import 'package:allapptest/utils/constant.dart';
// import 'package:allapptest/name_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomepageSb extends StatelessWidget {
  // static const String routeName = "/homefb";

  Future fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  Stream<List<String>> getStream() {
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index) => "item $index")]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("App In All"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs!.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: StreamBuilder(
          stream: getStream(),
          // future: fetchData(),
          builder: (context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(child: Text("fetch something"));
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(child: Text("Error"));
                }
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      // leading: Image.network(snapshot.data[index]['url']),
                      title: Text(snapshot.data[index]),
                      // subtitle: Text("ID: ${snapshot.data[index]['id']}"),
                    );
                  },
                );
            }
          }),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // meme = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
