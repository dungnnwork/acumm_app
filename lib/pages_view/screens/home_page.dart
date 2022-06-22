
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> brands = [
    {
      "title" : "The coffee house",
      "image" : "assets/images/coffee_house.png",
    },
    {
      "title" : "Gemini coffee",
      "image" : "assets/images/gemini_coffee.png",
    }
  ];
   @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width  = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(top: height*0.3,),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          fit: StackFit.loose,
          children: <Widget> [
            Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffffffff),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Row(
                        children: [
                 const  Text(
                        "Thương hiệu tích - tiêu điểm",
                        style:  TextStyle(
                          color:  Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        ),
                        TextButton(
                          onPressed: (){},
                           child:const Text(
                            "Xem tất cả",
                            style: TextStyle(
                              color: Color(0xffe1b000),
                              fontSize: 12.0,
                            ),
                            ),
                           ),
                    ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(brands.length, (index) => Container(
                        padding: const EdgeInsets.only(right: 20.0,),
                        child: Column(
                          children: [
                            Image.asset(brands[index]['image']),
                     const  SizedBox(height: 20.0,),
                            Text(brands[index]['title']),       
                          ],
                        ),
                      )),
                    ),
                  ),
          const   SizedBox(height: 5.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Row(
                      
                      children: [
                const   Text(
                            "Săn ưu đãi",
                            style:  TextStyle(
                          color:  Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        ),
                const   SizedBox(width: 170.0,), 
                        TextButton(
                          onPressed: (){},
                          child:const Text(
                            "Xem tất cả",
                            style: TextStyle(
                              color: Color(0xffe1b000),
                              fontSize: 12.0,
                            ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(),
                ],

              ),
            ),
            Container(
              height: height,
              width: width,
              ),
          ],
        ),
      ),
    );
  }
}
