import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/controllers/export_controllers.dart';

class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddEmployeeController());
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('เพิ่มพนักงานใหม่')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.nameController,
                  decoration: const InputDecoration(labelText: 'ชื่อพนักงาน'),
                  validator: (value) =>
                      value!.isEmpty ? 'กรุณากรอกชื่อพนักงาน' : null,
                ),
                TextFormField(
                  controller: controller.positionController,
                  decoration: const InputDecoration(labelText: 'ตำแหน่ง'),
                  validator: (value) =>
                      value!.isEmpty ? 'กรุณากรอกตำแหน่ง' : null,
                ),
                TextFormField(
                  controller: controller.emailController,
                  decoration: const InputDecoration(labelText: 'อีเมล'),
                  validator: (value) =>
                      value!.isEmpty ? 'กรุณากรอกอีเมล' : null,
                ),
                TextFormField(
                  controller: controller.phoneController,
                  decoration: const InputDecoration(labelText: 'เบอร์โทร'),
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                      value!.isEmpty ? 'กรุณากรอกเบอร์โทร' : null,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      controller.addEmployee();
                    }
                  },
                  child: const Text('เพิ่มพนักงาน'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
