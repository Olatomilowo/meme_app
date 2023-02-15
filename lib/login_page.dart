import 'dart:ui';
import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meme_app/sign_up.dart';
import 'package:meme_app/verify_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _createAccountKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: SingleChildScrollView(
              child: Form(
                key: _createAccountKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Log In',
                      style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontStyle: FontStyle.normal,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 68,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address',
                          style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333)),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA0A0A0)),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 14),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusColor: Color(0xffA0A0A0),
                                hintText: 'Enter your Email Address',
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter Password',
                          style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333)),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA0A0A0)),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: isVisible,
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isVisible = !isVisible;
                                      });
                                    },
                                    child: isVisible
                                        ? Icon(
                                            AkarIcons.eye_closed,
                                            color: Color(0xff717171),
                                          )
                                        : Icon(
                                            AkarIcons.eye_open,
                                            color: Color(0xff717171),
                                          )),
                                contentPadding:
                                    EdgeInsets.only(left: 14, top: 13),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusColor: Color(0xffA0A0A0),
                                hintText: 'Create Password',
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: (() {}),
                        child: Text(
                          'Log In',
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: Color(0xff857C94)),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Josefin Sans',
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA0A0A0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const SignUp())));
                        }),
                        child: Text(
                          'Sign Up',
                          style:
                              TextStyle(color: Color(0xff000000), fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: BorderSide(
                                    color: Color(0xff857C94), width: 4)),
                            backgroundColor: Color(0xffFFFFFF)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
