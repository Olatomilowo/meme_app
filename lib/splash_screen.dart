import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meme_app/login_page.dart';
import 'package:meme_app/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/Splash Screen.png'),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontStyle: FontStyle.normal,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff445BD1)),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Memes',
                  style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontStyle: FontStyle.normal,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Design',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffD7C73B)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Memes',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Find',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffB152DE)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Memes',
                    style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 19,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => SignUp())));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0xffF1E9E9),
                            fontSize: 22,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xffFFFFFF),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: 'JosefinSans',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontFamily: 'JosefinSans',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => LogIn())));
                              }),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
