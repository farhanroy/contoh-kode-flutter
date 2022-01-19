import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_belajar/rest_api/user.dart';
import 'package:http/http.dart' as http;

Future<User> fetchData() async {
  final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

  if (response.statusCode == 200) {

    return User.fromJson(jsonDecode(response.body));
  } else {

    throw Exception('Failed to load album');
  }
}

class BelajarHttpGet extends StatelessWidget {
  const BelajarHttpGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<User>(
          future: fetchData(),
          builder: (context, snapshot) {
            final item = snapshot.data!.data;

            if (snapshot.hasData) {

              return ListView.builder(
                itemCount: item!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Image.network(item[index].avatar!),
                      ),
                      title: Text(item[index].firstName!),
                      subtitle: Text(item[index].email!),
                    );
                  }
              );

            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return Center(child: CircularProgressIndicator());
          }
      ),
    );
  }
}
