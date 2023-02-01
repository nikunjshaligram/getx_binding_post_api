// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_post_api/core/urls.dart';
import 'package:getx_binding_post_api/data/model/create_employee.dart';
import 'package:http/http.dart' as http;

class EmployeeController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  Future<CreateEmployee?> submitdata() async {
    CreateEmployee createEmployee = CreateEmployee(
      name: nameController.text,
      salary: salaryController.text,
      age: ageController.text,
    );

    try {
      http.Response response = await http.post(Uri.tryParse(urls().baseurl)!,
          body: createEmployeeToJson(createEmployee),
          headers: {'content-type': 'application/json'});

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        print("result----$result");
        print(result['message']);

        createEmployee = CreateEmployee.fromJson(result);
        update();
        return createEmployee;
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
