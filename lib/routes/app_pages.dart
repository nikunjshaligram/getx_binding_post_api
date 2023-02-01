import 'package:get/get.dart';
import 'package:getx_binding_post_api/modules/bindng/employee_binding.dart';
import 'package:getx_binding_post_api/modules/views/createemployee.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.EMPLOYEE;

  static final routes = [
    GetPage(
        name: _Paths.EMPLOYEE,
        page: () => const CreateEmployeeScreen(),
        binding: EmployeeBinding())
  ];
}
