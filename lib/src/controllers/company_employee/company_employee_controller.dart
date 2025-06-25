import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'package:work_motion_test/src/models/company_employee_model.dart/company_employee_model.dart';
import '../../mock_data/company_employee_mockdata.dart';

class CompanyEmployeeController extends GetxController {
  final employees = <CompanyEmployeeModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    employees.assignAll(mockCompanyEmployees);
  }

  void addEmployee(CompanyEmployeeModel employee) {
    employee.id = const Uuid().v4();
    employees.add(employee);
    mockCompanyEmployees.add(employee);
  }

  void editEmployee(String id, CompanyEmployeeModel updated) {
    final index = employees.indexWhere((e) => e.id == id);
    if (index != -1) {
      employees[index] = updated;
      final mockIndex = mockCompanyEmployees.indexWhere((e) => e.id == id);
      if (mockIndex != -1) {
        mockCompanyEmployees[mockIndex] = updated;
      }
    }
  }

  void deleteEmployee(String id) {
    employees.removeWhere((e) => e.id == id);
    mockCompanyEmployees.removeWhere((e) => e.id == id);
  }
}
