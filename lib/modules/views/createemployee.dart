// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_post_api/controller/employee_controller.dart';

class CreateEmployeeScreen extends GetView<EmployeeController> {
  const CreateEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget name_field() {
      return TextFormField(
        controller: controller.nameController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.person,
          ),
          labelText: 'Name',
          counterText: "",
        ),
      );
    }

    Widget salary_field() {
      return TextFormField(
        controller: controller.salaryController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.money,
          ),
          labelText: 'Salary',
          counterText: "",
        ),
      );
    }

    Widget age_field() {
      return TextFormField(
        controller: controller.ageController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.calendar_month,
          ),
          labelText: 'Age',
          counterText: "",
        ),
      );
    }

    Widget btn_submit() {
      return ElevatedButton(
        onPressed: () {
          controller.submitdata();
        },
        child: const Text("Submit"),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Employee"),
      ),
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            name_field(),
            salary_field(),
            age_field(),
            const SizedBox(
              height: 30,
            ),
            btn_submit(),
          ],
        ),
      ),
    );
  }
}
