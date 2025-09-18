// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_mentor_task1/question2/user_model.dart';

class UpdateUser {
  UserModel userModel; //---- composition concept
  UpdateUser({required this.userModel});

  void updateUser(String name, int age, String email) {
    userModel.name = name;
    userModel.setAge = age;
    userModel.email = email;
  }
}
