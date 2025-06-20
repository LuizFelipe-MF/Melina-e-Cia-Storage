class User {
  User({
    required this.email,
    required this.name,
  });
  late final String email;
  late final String name;

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['name'] = name;
    return _data;
  }

  User.empty() {
    email = '';
    name = '';
  }
}
