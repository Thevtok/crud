import 'package:crud/user.dart';
import 'package:flutter/material.dart';

class UserController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  List<User> userList = [
    User(name: 'John Doe', username: 'johndoe'),
    User(name: 'Jane Smith', username: 'janesmith'),
    User(name: 'Bob Johnson', username: 'bobjohnson'),
  ];

  // Menambahkan pengguna baru
  void addUser(User user) {
    userList.add(user);
  }

  // Memperbarui pengguna berdasarkan indeks
  void updateUser(String name, User updatedUser) {
    int index = userList.indexWhere((user) => user.name == name);
    if (index != -1) {
      userList[index] = updatedUser;
    }
  }

  // Menghapus pengguna berdasarkan indeks
  void deleteUser(String name) {
    userList.removeWhere((user) => user.name == name);
  }
}
