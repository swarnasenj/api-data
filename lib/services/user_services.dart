import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserService extends StatefulWidget {
  final String apiUrl = "https://testapi.saxonmarket.com/categories";
  Future<List<dynamic>> fetchUsers() async {
    var uri= Uri.parse(apiUrl);
    var result = await http.get(uri);
    return json.decode(result.body)['results'];

  }


  @override
  _UserServiceState createState() => _UserServiceState();
}

class _UserServiceState extends State<UserService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}