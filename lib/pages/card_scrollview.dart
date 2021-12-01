import 'package:allapptest/widgets/drawer.dart';
// import 'package:allapptest/name_card.dart';
import 'package:flutter/material.dart';


class Cardpage extends StatefulWidget {
  @override
  _CardpageState createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  var meme = "Maforr";
  TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("App In All"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/1.jpeg",
                ),
                 SizedBox(
                  height: 20,
                ),
                Text(meme,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type Something",
                      labelText: "Type",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          meme = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
