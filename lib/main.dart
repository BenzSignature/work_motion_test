import 'package:get/get.dart';

import 'src/config/pub.dart';
import 'src/routes/export_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Work Motion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: PathRoutes.splash, // เริ่มที่หน้า Splash
      getPages: PagesRoutes.routes, // กำหนด route ทั้งหมด
    );
  }
}
