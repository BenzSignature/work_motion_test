import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/controllers/export_controllers.dart';
import 'package:work_motion_test/src/models/company_employee_model.dart/company_employee_model.dart';

class ProfileCompanyEmployeeScreen extends StatelessWidget {
  const ProfileCompanyEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final CompanyEmployeeModel employee = args['employee'];
    final bool isEdit = args['isEdit'] ?? false;
    final controllerProfileEmployee = Get.find<CompanyEmployeeController>();

    final nameController = TextEditingController(text: employee.name);
    final positionController = TextEditingController(text: employee.position);
    final emailController = TextEditingController(text: employee.email);
    final phoneController = TextEditingController(text: employee.phone);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            isEdit ? 'แก้ไข: ${employee.name}' : 'โปรไฟล์: ${employee.name}',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: isEdit
              ? Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(labelText: 'ชื่อ'),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: positionController,
                      decoration: InputDecoration(labelText: 'ตำแหน่ง'),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(labelText: 'อีเมล'),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(labelText: 'เบอร์โทร'),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        final updatedEmployee = CompanyEmployeeModel(
                          id: employee.id,
                          name: nameController.text,
                          position: positionController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                        );
                        controllerProfileEmployee.editEmployee(
                          employee.id,
                          updatedEmployee,
                        );
                        Get.back();
                      },
                      child: Text('บันทึกการแก้ไข'),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ตำแหน่ง: ${employee.position}",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text("อีเมล: ${employee.email}"),
                    SizedBox(height: 8),
                    Text("เบอร์โทร: ${employee.phone}"),
                  ],
                ),
        ),
      ),
    );
  }
}
