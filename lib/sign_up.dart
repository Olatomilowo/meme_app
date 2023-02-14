import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meme_app/verify_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 41),
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
                    'Create Account',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Kindly fill the information below, to create \naccount.',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8E8E8E)),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            style: TextStyle(
                                fontFamily: 'JosefinSans',
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff333333)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            width: 150,
                            height: 48,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffA0A0A0)),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextFormField(
                              controller: _firstNameController,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 14),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusColor: Color(0xffA0A0A0),
                                  // focusedBorder: InputBorde,
                                  hintText: 'Enter First Name',
                                  border: InputBorder.none),
                              validator: (value) {
                                if (_firstNameController.text.isEmpty) {
                                  return 'Enter First Name';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
                            style: TextStyle(
                                fontFamily: 'JosefinSans',
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff333333)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            width: 150,
                            height: 48,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffA0A0A0)),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextFormField(
                              controller: _lastNameController,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 14),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusColor: Color(0xffA0A0A0),
                                  // focusedBorder: InputBorde,
                                  hintText: 'Enter Last Name',
                                  border: InputBorder.none),
                              validator: (value) {
                                if (_lastNameController.text.isEmpty) {
                                  return 'Enter Last Name';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
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
                          validator: (value) {
                            if (_emailController.text.isEmpty) {
                              return 'Enter email address';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
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
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 14),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusColor: Color(0xffA0A0A0),
                              hintText: 'Enter Phone Number',
                              border: InputBorder.none),
                          validator: (value) {
                            if (_phoneNumberController.text.length < 11) {
                              return 'Enter complete phone number';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create Password',
                        style: TextStyle(
                            fontFamily: 'JosefinSans',
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
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off)),
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
                          validator: (value) {
                            if (_passwordController.text.isEmpty) {
                              return 'Enter Password';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_box_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'I agree to the',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' terms of services',
                                  style: TextStyle(
                                      color: Colors.blueAccent, fontSize: 18),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {}),
                            ]),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'and',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' privacy policy',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 18),
                              recognizer: TapGestureRecognizer()..onTap = () {})
                        ]),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: (() {
                        if (_createAccountKey.currentState?.validate() ??
                            false) {
                          _createAccountKey.currentState?.save();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Verification(
                                        email: _emailController.text,
                                        number: _phoneNumberController.text,
                                      )));
                        }
                      }),
                      child: Text(
                        'Get Started',
                        style:
                            TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff857C94),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 69,
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
