import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarCustomer extends StatelessWidget {
  const AppBarCustomer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
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
    );
  }
}
