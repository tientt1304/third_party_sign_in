import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

import 'package:third_party_sign_in/api/google_sign_in_api.dart';
import 'package:third_party_sign_in/screens/infor_screen.dart';
import 'package:third_party_sign_in/widgets/app_bar_widget.dart';
import 'package:third_party_sign_in/widgets/top_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Third Party Sign In',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Third Party Sign In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text('A'),
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Text('B'),
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        ListTile(
          title: const Text(
            'To page 9',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'To page 2',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'other drawer item',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {},
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text(widget.title),
          // ),
          drawer: Drawer(
            child: Container(color: Colors.black, child: drawerItems),
          ),
          body: Column(
            children: [
              TopBar(),
              //AppBarCustomer(),
              Builder(builder: (context) {
                return Container(
                  height: 60,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset(
                          'assets/icons/ic-nav-search.png',
                          height: 40,
                        ),
                        onTap: () {
                          print('Search');
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        height: 30,
                      ),
                      GestureDetector(
                        child: Image.asset(
                          'assets/icons/ic-bag.png',
                          height: 40,
                        ),
                        onTap: () => print('Bag'),
                      ),
                    ],
                  ),
                );
              }),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: onLoginGoogle,
                        child: const Text('Sign In With Google'),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: onLoginFacebook,
                          child: const Text('Sign In With Facebook')),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: onLoginApple,
                          child: const Text('Sign In With Apple')),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void onLoginGoogle() async {
    print('on Login With GG');
    final user = await GoogleSignInApi.googleLogin();
    if (user == null) {
      print('Failed');
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Login Failed')));
    } else {
      print('Not null');
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => InforScreen(user: user)));
    }
  }

  void onLoginFacebook() {
    print('on Login With FB');
  }

  void onLoginApple() {
    print('on Login With Apple');
  }
}
