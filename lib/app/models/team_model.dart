class TeamModel {
  TeamModel({
    required this.id,
    required this.name,
    required this.isActive,
    required this.employees,
  });
  late final String id;
  late final String name;
  late final bool isActive;
  late final List<Employees> employees;

  TeamModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isActive = json['isActive'];
    employees =
        List.from(json['employees']).map((e) => Employees.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['isActive'] = isActive;
    _data['employees'] = employees.map((e) => e.toJson()).toList();
    return _data;
  }

  TeamModel.empty() {
    id = '';
    name = '';
    isActive = false;
    employees = [];
  }
}

class Employees {
  Employees({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });
  late final String id;
  late final String name;
  late final String email;
  late final String phoneNumber;
  late final String imageUrl;

  Employees.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['phoneNumber'] = phoneNumber;
    _data['imageUrl'] = imageUrl;
    return _data;
  }
}
