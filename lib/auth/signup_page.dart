
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/background.dart';


class SignUpPage extends StatefulWidget {
  static const routeName = '/signupPage';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => Scaffold(
            body: Stack(children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: const Text(
                  "انشاء حساب",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                      margin: const EdgeInsets.only(
                        right: 50,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 20),
                                border: InputBorder.none,
                                icon: Icon(Icons.text_fields),
                                hintText: "الاسم",
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: TextField(
                              controller: phoneNumberController,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 22),
                                border: InputBorder.none,
                                icon: Icon(Icons.phone),
                                hintText: "رقم الهاتف",
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 22),
                                border: InputBorder.none,
                                icon: Icon(Icons.email),
                                hintText: "البريد الألكترونى",
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 16, right: 32),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 22),
                                border: InputBorder.none,
                                icon: Icon(Icons.password),
                                hintText: "كلمة السر",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () async {
                     
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green[200]!.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xff1bccba),
                                Color(0xff22e2ab),
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ])),
      ),
    );
  }
}