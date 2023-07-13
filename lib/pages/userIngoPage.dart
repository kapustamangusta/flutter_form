import 'package:flutter/material.dart';
import 'package:form_example/model/user.dart';

class UserInfoPage extends StatelessWidget {
  User user;
  UserInfoPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый смешарик'),
        centerTitle: true,
      ),
      body: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle:user.story != '' ? Text(user.story) : null,
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: Text(user.country),
            ),
            ListTile(
              title: Text(
                user.phone,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
            user.email!='' ? ListTile(
              title: Text(
                user.email,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ) : ListTile(),
          ],
        ),
      ),
    );
  }
}
