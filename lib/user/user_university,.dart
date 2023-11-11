
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:places_guide/models/resturant_model.dart';

class UserUniversity extends StatefulWidget {
  static const routeName = '/userUniversity';
  const UserUniversity({super.key});

  @override
  State<UserUniversity> createState() => _UserUniversityState();
}

class _UserUniversityState extends State<UserUniversity> {
 



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => Scaffold(
            body: Column(
          children: [
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [.01, .25],
                  colors: [
                    Color(0xfff8a55f),
                    Color(0xfff1665f),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/images/logo.jpg'),
                        ),
                        SizedBox(
                          width: 250.w,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xfff8a55f), //<-- SEE HERE
                          child: IconButton(
                            icon: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "المرافق العامة",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(
                right: 20.w,
                left: 20.w,
              ),
              child: TextField(
                style: const TextStyle(
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xfff1665f), width: 32.0),
                      borderRadius: BorderRadius.circular(25.0)),
                  hintText: 'ابحث بالمنطقة',
                ),
                onChanged: (char) {
                  
                },
              ),
            ),
            Container(
              child: Expanded(
                flex: 8,
                child: ListView.builder(
                    itemCount: resturants.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Padding(
                                padding:
                                    EdgeInsets.only(right: 20.w, left: 20.w),
                                child: Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        '${resturants[index].image}',
                                        fit: BoxFit.fill,
                                      ),
                                      Text(
                                        '${resturants[index].name}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Cairo',
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'المنطقة : ${resturants[index].area}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                      Text(
                                        'رقم الهاتف: ${resturants[index].phoneNumber}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                      Text(
                                        'العنوان : ${resturants[index].address}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Cairo',
                                        ),
                                      ),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
List<Resturants> resturants = [
  Resturants(
      name: "جامعة القاهرة",
      image: 'assets/images/111.jpg',
      area: "الجيزة",
      address:
          "شارع الجامعة محافظة الجيزة",
      phoneNumber: "0235674835"),
  Resturants(
      name: "جامعة عين شمس",
      image: 'assets/images/222.jpg',
      area: "العباسية",
      address:
          "شارع الخليفة المأمون ، العباسية ، القاهرة.",
      phoneNumber: "0226831417"),

];

