import 'package:flutter/material.dart';
import 'package:meme_app/login_page.dart';
import 'package:meme_app/verify_page.dart';

class SuccesfullyVerify extends StatefulWidget {
  const SuccesfullyVerify({super.key});

  @override
  State<SuccesfullyVerify> createState() => _SuccesfullyVerifyState();
}

class _SuccesfullyVerifyState extends State<SuccesfullyVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 37),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Color(0xff000000),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => LogIn())));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Josefin Sans',
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 91),
              Center(
                child: Image(image: AssetImage('images/Vector.png')),
              ),
              SizedBox(
                height: 78,
              ),
              Text(
                'Account Successfully Verified',
                style: TextStyle(
                  fontFamily: 'Josefin Sans',
                  fontStyle: FontStyle.normal,
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      // body: Image(image: AssetImage('images/Splash Screen.png')),
    );
  }
}
