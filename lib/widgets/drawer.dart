import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Agba Piro"),
              accountEmail: Text('AgbaPiro@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1593642633279-1796119d5482?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
              )),
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
    );
  }
}
