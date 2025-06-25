import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/controllers/export_controllers.dart';
import 'package:work_motion_test/src/models/company_employee_model.dart/company_employee_model.dart';
import 'package:work_motion_test/src/routes/export_routes.dart';

class CompanyEmployeeScreen extends StatelessWidget {
  const CompanyEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerCompanyEmployee = Get.put(CompanyEmployeeController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('พนักงานในบริษัท')),
        body: Obx(
          () => ListView.builder(
            itemCount: controllerCompanyEmployee.employees.length,
            itemBuilder: (context, index) {
              final employee = controllerCompanyEmployee.employees[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                elevation: 2,
                child: ListTile(
                  title: Text(employee.name),
                  subtitle: Text('${employee.position}\n${employee.email}'),
                  isThreeLine: true,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Get.toNamed(
                            PathRoutes.profileCompanyEmployee,
                            arguments: {'employee': employee, 'isEdit': true},
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'ยืนยันการลบ',
                            middleText: 'คุณแน่ใจหรือไม่ที่จะลบพนักงานคนนี้?',
                            textConfirm: 'ใช่',
                            textCancel: 'ไม่',
                            confirmTextColor: Colors.white,
                            onConfirm: () {
                              controllerCompanyEmployee.deleteEmployee(
                                employee.id,
                              );
                              Get.back();
                            },
                            onCancel: () {},
                          );
                        },
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(
                      PathRoutes.profileCompanyEmployee,
                      arguments: {'employee': employee, 'isEdit': false},
                    );
                  },
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await Get.toNamed(PathRoutes.addEmployee);
            if (result != null && result is CompanyEmployeeModel) {
              controllerCompanyEmployee.addEmployee(result);
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
