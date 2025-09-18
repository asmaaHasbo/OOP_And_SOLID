// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print

import 'package:flutter_mentor_task1/question2/user_model.dart';

class SaveToFirestore {
  UserModel userModel; //---- composition concept

  SaveToFirestore({required this.userModel});

  void saveToFirestore() {
    userModel.setAge = 10;
    int age = userModel.getAge;

    print('Saving ${userModel.name}, $age, ${userModel.email} to Firestore');
  }
}
