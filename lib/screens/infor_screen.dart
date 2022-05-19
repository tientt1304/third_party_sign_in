import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:third_party_sign_in/api/google_sign_in_api.dart';

import '../main.dart';

class InforScreen extends StatelessWidget {
  final GoogleSignInAccount user;
  //final user;
  const InforScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(user.id);
    print(user.serverAuthCode);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information Screen'),
        actions: [
          TextButton(
              onPressed: () async {
                await GoogleSignInApi.googleSignOut();

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>
                        MyHomePage(title: 'Third Party Sign In')));
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (user.photoUrl != null)
                  ? CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(user.photoUrl!),
                    )
                  : CircleAvatar(
                      radius: 40,
                      child: Text(
                        user.displayName![0],
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
              if (user.displayName != null)
                Text(
                  user.displayName!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              Text(user.email),
              if (user.serverAuthCode != null) Text(user.serverAuthCode!),
            ]),
      ),
    );
  }
}
