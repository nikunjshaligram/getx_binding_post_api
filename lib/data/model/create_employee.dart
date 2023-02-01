import 'dart:convert';

CreateEmployee createEmployeeFromJson(String str) =>
    CreateEmployee.fromJson(json.decode(str));

String createEmployeeToJson(CreateEmployee data) => json.encode(data.toJson());

class CreateEmployee {
  String? name;
  String? salary;
  String? age;

  CreateEmployee({this.name, this.salary, this.age});

  CreateEmployee.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    salary = json['salary'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['salary'] = this.salary;
    data['age'] = this.age;
    return data;
  }
}
