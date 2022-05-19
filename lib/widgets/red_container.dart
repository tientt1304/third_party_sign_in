import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RedContainer extends StatelessWidget {
  const RedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      margin: const EdgeInsets.only(top: 5),
      color: Colors.red,
    );
  }
}
