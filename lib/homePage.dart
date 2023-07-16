// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:crud/user.dart';
import 'package:flutter/material.dart';
import 'package:crud/controller.dart';

class HomePage extends StatefulWidget {
  final UserController userController;

  const HomePage({Key? key, required this.userController}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<User> userList = widget.userController.userList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          User user = userList[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.username),
          );
        },
      ),
    );
  }
}
