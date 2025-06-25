import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/controllers/export_controllers.dart';
import 'package:work_motion_test/src/routes/export_routes.dart';

class OutsourceEmployeeScreen extends StatelessWidget {
  const OutsourceEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerOutsourceEmployee = Get.put(OutsourceEmployeeController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('พนักงาน Outsource')),
        body: Obx(() {
          if (controllerOutsourceEmployee.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: controllerOutsourceEmployee.employees.length,
            itemBuilder: (context, index) {
              final employee = controllerOutsourceEmployee.employees[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(employee.photo),
                  ),
                  title: Text(employee.name),
                  subtitle: Text('${employee.company}\n${employee.email}'),
                  isThreeLine: true,
                  trailing: Text(employee.phone),
                  onTap: () {
                    Get.toNamed(
                      PathRoutes.profileOutsourceEmployee,
                      arguments: employee,
                    );
                  },
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
