import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Users {
  final int id;
  final String name;
  final String email;
  final String password;
  Users({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      id: map['id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) => Users.fromMap(json.decode(source) as Map<String, dynamic>);
}
