import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key? key,
    required this.meme,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String meme;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}