import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/controllers/export_controllers.dart';
import 'package:work_motion_test/src/models/company_employee_model.dart/company_employee_model.dart';

class AddEmployeeController extends GetxController {
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  void addEmployee() {
    final uuid = const Uuid().v4();
    final newEmployee = CompanyEmployeeModel(
      id: uuid,
      name: nameController.text,
      position: positionController.text,
      email: emailController.text,
      phone: phoneController.text,
    );

    Get.find<CompanyEmployeeController>().addEmployee(newEmployee);
    Get.back();
  }

  @override
  void onClose() {
    nameController.dispose();
    positionController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}
