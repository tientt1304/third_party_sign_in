import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      margin: const EdgeInsets.only(top: 5),
      color: Colors.white,
      child: const Text(
        'Sale Off 20 - 50% | Tết Tý Vui Hết Ý | Từ 15/1 đến 30/1/2021 ',
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
