import 'package:get/get.dart';
import 'package:work_motion_test/src/views/export_views.dart';

import 'export_routes.dart';

class PagesRoutes {
  static final routes = [
    GetPage(name: PathRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: PathRoutes.home, page: () => const HomeScreen()),
    GetPage(
      name: PathRoutes.companyEmployee,
      page: () => const CompanyEmployeeScreen(),
    ),
    GetPage(
      name: PathRoutes.profileCompanyEmployee,
      page: () => const ProfileCompanyEmployeeScreen(),
    ),
    GetPage(
      name: PathRoutes.addEmployee,
      page: () => const AddEmployeeScreen(),
    ),
    GetPage(
      name: PathRoutes.outsourceEmployee,
      page: () => const OutsourceEmployeeScreen(),
    ),
    GetPage(
      name: PathRoutes.profileOutsourceEmployee,
      page: () => const ProfileOutsourceEmployeeScreen(),
    ),
  ];
}
