import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trading_application/views/auth_screen/login_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/lists.dart';
import 'components/login_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
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
            child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Most Advanced &',
                    style: TextStyle(
                        fontSize: 52, fontWeight: FontWeight.bold, height: 1),
                  ),
                  Text(
                    'Traders friendly',
                    style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        height: 2,
                        color: Colors.blueAccent),
                  ),
                  Text(
                    'Options Analysis Tool',
                    style: TextStyle(
                        fontSize: 52, fontWeight: FontWeight.bold, height: 1),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Unlock the Future of Trading with Advanced Charts and In-Depth Analysis',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, height: 2),
                  ),
                  SizedBox(height: 24),
                  Container(
                    color: Colors.transparent,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      onPressed: () {
                        Get.to(() => const LoginPage());
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width / 4,
              height: MediaQuery.sizeOf(context).height,
              // color: Colors.grey,
              child: VxSwiper.builder(
                  scrollDirection: Axis.vertical,
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  // height: 140,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  itemCount: slidersListMap.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      slidersListMap[index],
                      fit: BoxFit.fill,
                    )
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  }),
            )
          ],
        )),
      ),
    );
  }
}
