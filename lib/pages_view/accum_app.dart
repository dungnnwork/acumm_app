import 'package:accum_points_app/pages_view/screens/endow_page.dart';
import 'package:accum_points_app/pages_view/screens/home_page.dart';
import 'package:accum_points_app/pages_view/screens/profile_page.dart';
import 'package:accum_points_app/pages_view/screens/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AccumApp extends StatefulWidget {
  const AccumApp({Key? key}) : super(key: key);

  @override
  State<AccumApp> createState() => _AccumAppState();
}

class _AccumAppState extends State<AccumApp> {
  int seclectedIndex = 0;
  List<Widget> tapIcons = [
    Image.asset("assets/icons/trang chu.png"),
    Image.asset("assets/icons/uu dai.png"),
    Image.asset("assets/icons/quet ma.png"),
    Image.asset("assets/icons/doi tac.png"),
    Image.asset("assets/icons/ca nhan.png"),
  ];
  List<Widget> pages = [
    HomePage(), EndowPage(), Profile(), HomePage(), Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return bodyApp();
  }
  bodyApp(){
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: pages[seclectedIndex],
    );
  }
  Widget bottomBar(){
    return BottomNavigationBar(
      selectedItemColor:const Color(0xffffcd01),
      selectedIconTheme: const IconThemeData(
        color: Color(0xffffcd01),
      ),
      currentIndex: seclectedIndex,
      onTap: onTapHandel,
      type: BottomNavigationBarType.fixed,
      items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: tapIcons[0],
            label: "Trang chủ",
            ),
          BottomNavigationBarItem(
            icon: tapIcons[1],
            label: 'Ưu đãi',
            ),
          BottomNavigationBarItem(
            icon: tapIcons[2],
            label: 'Quét mã',
            ),
          BottomNavigationBarItem(
            icon: tapIcons[3],
            label: 'Đối tác',
            ),
          BottomNavigationBarItem(
            icon: tapIcons[4],
            label: 'Cá nhân',
            ),      
        ],
      );
  }
  void onTapHandel(int index){
    setState(() {
      seclectedIndex = index;
    });
  }
  }