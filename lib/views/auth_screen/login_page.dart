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
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 0.2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          width: 400,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Trading Tick",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                width: 220,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.transparent),
                  onPressed: () {
                    // Implement login logic here
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 25,
                          height: 25,
                          child: Image(
                              image: AssetImage('images/google_logo.png'))),
                      Text(
                        'Login with Google',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
