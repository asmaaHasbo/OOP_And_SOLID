class UserModel {
  String name;
  int _age;
  String email;

  UserModel(this.name, this.email, this._age);

  set setAge(int age) {
    if (age < 10) {
      _age = age;
    } else {
      throw 'age must be gretter than 10 ';
    }
  }

  get getAge => _age;
}
