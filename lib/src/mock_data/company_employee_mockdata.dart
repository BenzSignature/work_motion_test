import 'package:work_motion_test/src/models/company_employee_model.dart/company_employee_model.dart';

final List<CompanyEmployeeModel> mockCompanyEmployees = [
  CompanyEmployeeModel(
    id: "110ec58a-a0f2-4ac4-8393-c866d813b8d1",
    name: "Moises Wehner",
    position: "Mobile Developer",
    email: "Ross.Stehr@gmail.com",
    phone: "0888888888",
  ),
  CompanyEmployeeModel(
    id: "6c84fb90-12c4-11e1-840d-7b25c5ee775a",
    name: "Front-End Developer",
    position: "Feil - Kutch",
    email: "Feil@gmail.com",
    phone: "0899999999",
  ),
];
List<CompanyEmployeeModel> getMockDataCompanyEmployee() => mockCompanyEmployees;
