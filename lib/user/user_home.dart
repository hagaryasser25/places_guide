import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:places_guide/user/user_government.dart';
import 'package:places_guide/user/user_resturants.dart';
import 'package:places_guide/user/user_university,.dart';

import '../auth/login_page.dart';

class userHome extends StatefulWidget {
  static const routeName = '/userHome';
  const userHome({super.key});

  @override
  State<userHome> createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
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
                                Icons.logout,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('تأكيد'),
                                      content:
                                          Text('هل انت متأكد من تسجيل الخروج'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, LoginPage.routeName);
                                          },
                                          child: Text('نعم'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('لا'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'الصفحة الرئيسية',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/home.jpg',
              height: 200,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, UserResturants.routeName);
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w, left: 10.w),
                        child: Center(
                          child: Column(children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Image.asset('assets/images/resturant.jpg',
                                width: 120.w, height: 120.h),
                            SizedBox(
                              height: 10.h,
                            ),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "الأماكن الترفيهية",
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  InkWell(
                    onTap: () {
                       Navigator.pushNamed(context, UserGovernment.routeName);
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w, left: 10.w),
                        child: Center(
                          child: Column(children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Image.asset('assets/images/bank.jpg',
                                width: 120.w, height: 120.h),
                            SizedBox(
                              height: 10.h,
                            ),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                "المصالح الحكومية",
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                 Navigator.pushNamed(context, UserUniversity.routeName);
              },
              child: Container(
                width: 150.w,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w, left: 10.w),
                    child: Center(
                      child: Column(children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset('assets/images/school.png',
                            width: 120.w, height: 120.h),
                        SizedBox(
                          height: 10.h,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "المرافق العامة",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
