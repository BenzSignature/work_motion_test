import 'package:get/get.dart';
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/routes/export_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('พนักงาน')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(PathRoutes.companyEmployee);
                    },
                    child: Text('พนักงานในบริษัท'),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(PathRoutes.outsourceEmployee);
                    },
                    child: Text('พนัก Outsource'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
