import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EndowPage extends StatefulWidget {
  const EndowPage({Key? key}) : super(key: key);

  @override
  State<EndowPage> createState() => _EndowPageState();
}

class _EndowPageState extends State<EndowPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "uu dai",
        style: TextStyle(
          fontSize: 100.0,
        ),
        ),
    );
  }
}