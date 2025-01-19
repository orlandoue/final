import 'package:flutter/material.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';
import 'package:pinput/pinput.dart';



class MyPinCode extends StatefulWidget {
  final Function(String) onChanged;
  final Function(String) onCompleted;
  final Color? color;

  const MyPinCode({
    super.key,
    required this.onChanged,
    required this.onCompleted,
    this.color,
  });

  @override
  State<MyPinCode> createState() => _MyPinCodeState();
}

class _MyPinCodeState extends State<MyPinCode> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 60,
      margin: EdgeInsets.all(5),
      textStyle: TextStyle(
        fontSize: 20,
        color: widget.color ?? kblack,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.boston
      ),
      decoration: BoxDecoration(
        color:kwhite.withOpacity(0.1),
        border: Border.all(color: kgrey2),
        borderRadius: BorderRadius.circular(8), 
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: kpurple1.withOpacity(0.09),
        borderRadius: BorderRadius.circular(8), 
        border: Border.all(
          color: widget.color ?? kpurple1,
        ),
      ),
    );

    return Pinput(
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
        color: kpurple1.withOpacity(0.09),
        borderRadius: BorderRadius.circular(8), 
        border: Border.all(
          color: widget.color ?? kpurple1,
        ),
        ),
      ),
      onChanged: widget.onChanged,
      onCompleted: widget.onCompleted,
    );
  }
}