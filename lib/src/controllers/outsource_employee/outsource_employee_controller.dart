import 'package:get/get.dart';
import 'package:work_motion_test/src/models/export_model.dart';
import 'package:work_motion_test/src/services/export_services.dart';

class OutsourceEmployeeController extends GetxController {
  var employees = <OutsourceEmployeeModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadOutsourceEmployees();
  }

  void loadOutsourceEmployees() async {
    try {
      isLoading.value = true;
      final data = await OutsourceEmployeeService.getDataOutsourceEmployees();
      employees.assignAll(data);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
