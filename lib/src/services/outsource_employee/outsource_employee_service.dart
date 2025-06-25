import 'package:http/http.dart' as http;
import 'package:work_motion_test/src/config/export_config.dart';
import 'package:work_motion_test/src/models/export_model.dart';

class OutsourceEmployeeService {
  static const String url = 'https://fake-json-api.mock.beeceptor.com/users';

  static Future<List<OutsourceEmployeeModel>>
  getDataOutsourceEmployees() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((e) => OutsourceEmployeeModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed To getDataOutsource Employees');
    }
  }
}
