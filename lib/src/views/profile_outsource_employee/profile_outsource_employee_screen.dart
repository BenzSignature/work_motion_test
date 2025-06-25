import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/models/export_model.dart';

class ProfileOutsourceEmployeeScreen extends StatelessWidget {
  const ProfileOutsourceEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final employee = Get.arguments as OutsourceEmployeeModel;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('โปรไฟล์: ${employee.name}')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(employee.photo),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text("ชื่อบริษัท: ${employee.company}"),
                  SizedBox(height: 8),
                  Text(
                    "ที่อยู่: ${employee.address}, ${employee.state}, ${employee.country} ${employee.zip}",
                  ),
                  SizedBox(height: 8),
                  Text("เบอร์โทร: ${employee.phone}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
