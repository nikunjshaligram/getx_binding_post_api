import 'package:get/get.dart';
import 'package:getx_binding_post_api/controller/employee_controller.dart';

class EmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmployeeController>(() => EmployeeController());
    // TODO: implement dependencies
  }
}
