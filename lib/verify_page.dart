import 'package:flutter/material.dart';
import 'package:meme_app/successfuly_verify.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  String email;
  String number;
  Verification({required this.email, required this.number});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _otpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _otpKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Verify your Account',
                  style: TextStyle(
                    fontFamily: 'Josefin Sans',
                    fontStyle: FontStyle.normal,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Enter the 5 digit codes that was sent to your number: ********${widget.number.substring(9)} and registered email Address',
                  style: TextStyle(
                    color: Color(0xff8E8E8E),
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Josefin Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 86,
                ),
                Center(
                  child: PinCodeTextField(
                    appContext: context,
                    length: 5,
                    obscureText: true,
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    // validator: (value) {
                    //   if (_otpController.text.length < 5) {
                    //     return 'input 5 digit otp';
                    //   }
                    // },
                    onChanged: (value) {},
                    onCompleted: (value) {
                      print('Completed');
                    },
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 50,
                        fieldWidth: 50,
                        borderRadius: BorderRadius.circular(5),
                        activeColor: Colors.grey,
                        inactiveColor: Colors.grey,
                        selectedFillColor: Colors.grey,
                        selectedColor: Colors.grey,
                        fieldOuterPadding: EdgeInsets.all(2),
                        activeFillColor: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 240,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SuccesfullyVerify())));
                    }),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Josefin Sans',
                          fontStyle: FontStyle.normal),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Color(0xff857C94)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
