import 'package:flutter/material.dart';

import 'components/login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trading App",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          buildDropdownButtons(),
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.access_alarms),
          ),
          Container(
            color: Colors.transparent,
            // width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: () {
                // Implement login logic here
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Text("Login page"),
        ),
      ),
    );
  }
}
