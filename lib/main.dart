import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.brown,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App In All"),
      ),
      body: Container(
        height: 150,
        color: Colors.black,
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.red,
                    ]
                  )
                ),
                child: Text("Hello BoX",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ))
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellow,
                      Colors.green,
                    ] 
                  )
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.teal,
                      Colors.red,
                    ]
                  )
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Agba Piro"), 
              accountEmail: Text('AgbaPiro@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1593642633279-1796119d5482?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
              )
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Agba Piro"),
                subtitle: Text("Software Engineer"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("AgbaPiro@gmail.com"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.facebook),
                title: Text("Facebook"),
                subtitle: Text("agba_piro"),
                trailing: Icon(Icons.app_registration),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
