class CompanyEmployeeModel {
  String id;
  String name;
  String position;
  String email;
  String phone;

  CompanyEmployeeModel({
    required this.id,
    required this.name,
    required this.position,
    required this.email,
    required this.phone,
  });

  factory CompanyEmployeeModel.fromJson(Map<String, dynamic> json) {
    return CompanyEmployeeModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      position: json['position'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'position': position,
      'email': email,
      'phone': phone,
    };
  }
}
