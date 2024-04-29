import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:final_projectt/Register/services/user_data_model.dart';
import 'package:http/http.dart' as http;

class Post {
  Future<String> register(
      {required String name,
      required String pass,
      required String email}) async {
    String url = 'the url(endpoint) from the backend';
    var data = jsonEncode({'name': name, 'email': email, 'password': pass});
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: data,
    );
    String jsonData = response.body;
    if (response.statusCode == 201) {
      print('sucssses');
      print(jsonData);
      return (response.body);
    } else {
      return (response.body);
    }
  }

  Future<bool> login({required String pass, required String email}) async {
    String url = 'the url(endpoint) from the backend';
    var data = jsonEncode({'email': email, 'password': pass});
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: data,
    );
    Map<String, dynamic> jsonData = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print('sucssses');
      final userData = UserData.fromJson(jsonData);
      // hna lma tgeb al response w tshof ant 3aiz eh feh
      // getxStorge.write('token', userData.token);
      // getxStorge.write('role', userData.role);
      // getxStorge.write('userId', userData.userId);
      // String token = getxStorge.read('token');
      // print(
      //     "${userData.role}   and    ${userData.token}   and     ${userData.userId}");
      return true;
    } else {
      print('error ${response.statusCode}');
      return false;
    }
  }
}

// Future<void> register(
//     {required String name,
//     required String pass,
//     required String email}) async {
//   var data = jsonEncode({'name': name, 'email': email, 'password': pass});
//   final response = await dio.post(url,
//       data: data,
//       options: Options(
//           headers: {'Content-Type': 'application/json; charset=UTF-8'}));

//   print(response.data);
// }
