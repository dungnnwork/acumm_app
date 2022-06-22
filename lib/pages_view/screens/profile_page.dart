import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100.0, bottom: 20.0,left: 100.0,right: 100.0,),
        child: Text(
          "anh dung",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.red,
          ),
          ),
      ),
    );
  }
}