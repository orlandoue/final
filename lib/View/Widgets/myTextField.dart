import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:orland_sports/View/Widgets/myText.dart';
import 'package:orland_sports/const/appColors.dart';
import 'package:orland_sports/const/app_fonts.dart';

class MyTextField extends StatefulWidget {
  MyTextField(
      {Key? key,
      this.controller,
      this.hint,
      this.label,
      this.onChanged,
      this.isObSecure = false,
      this.marginBottom = 15.0,
      this.maxLines,
      this.isFilled = true,
      this.filledColor,
      this.focusedFilledColor = kwhite,
      this.fhintColor = kgrey1,
      this.hintColor,
      this.bordercolor,
      this.isright,
      this.radius = 10,
      this.haveLabel = true,
      this.labelSize,
      this.prefixIcon,
      this.suffixtext,
      this.suffixIcon,
      this.suffixTap,
      this.keyboardType,
      this.showFlag,
      this.labelColor,
      this.useCountryCodePicker = false})
      : super(key: key);

  String? label, hint, suffixtext;
  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure,
      haveLabel,
      isFilled,
      isright,
      useCountryCodePicker,
      showFlag;
  double? marginBottom;
  int? maxLines;
  double? labelSize, radius;
  Widget? suffixIcon;
  Widget? prefixIcon;
  Color? filledColor,
      focusedFilledColor,
      hintColor,
      bordercolor,
      fhintColor,
      labelColor;
  TextInputType? keyboardType;
  VoidCallback? suffixTap;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late FocusNode _focusNode;
  final ValueNotifier<bool> _focusNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _focusNotifier.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    _focusNotifier.value = _focusNode.hasFocus;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.marginBottom!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.label != null)
            MyText(
              text: widget.label ?? '',
              size: 14,
              paddingBottom: 8,
              weight: FontWeight.w500,
              color: widget.labelColor ?? kblack,
            ),
          ValueListenableBuilder(
            valueListenable: _focusNotifier,
            builder: (_, isFocused, child) {
              return TextFormField(
                keyboardType: widget.keyboardType,
                maxLines: widget.maxLines ?? 1,
                controller: widget.controller,
                onChanged: widget.onChanged,
                textInputAction: TextInputAction.next,
                obscureText: widget.isObSecure!,
                obscuringCharacter: '*',
                style: TextStyle(
                    fontFamily: AppFonts.boston,
                    fontSize: 15,
                    color: kgrey1,
                    fontWeight: FontWeight.w500),
                textAlign:
                    widget.isright == true ? TextAlign.right : TextAlign.left,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  prefixIcon: widget.useCountryCodePicker == true
                      ? CountryCodePicker(
                          onChanged: print,
                          initialSelection: 'US',
                          favorite: ['+1', 'US'],
                          showCountryOnly: false,
                          showFlag: widget.showFlag ?? false,
                          showFlagDialog: widget.showFlag ?? false,
                          showDropDownButton: true,
                          textStyle: TextStyle(
                            color: kgrey1,
                            fontFamily: AppFonts.boston,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          showOnlyCountryWhenClosed: widget.showFlag ?? false,
                          alignLeft: false,
                        )
                      : widget.prefixIcon != null
                          ? widget.prefixIcon
                          : null,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  hintText: widget.hint,
                  suffixIcon: widget.suffixIcon != null
                      ? GestureDetector(
                          onTap: widget.suffixTap,
                          child: widget.suffixIcon,
                        )
                      : widget.suffixIcon,
                  suffixStyle: TextStyle(
                    fontFamily: AppFonts.boston,
                    fontSize: 14,
                    color: isFocused ? widget.fhintColor : widget.hintColor,
                  ),
                
                  suffixText: widget.suffixtext,
                  hintStyle: TextStyle(
                    fontFamily: AppFonts.boston,
                    fontSize: 14,
                    color: isFocused ? widget.fhintColor : widget.hintColor,
                  ),
                  filled: true,
                  fillColor: isFocused
                      ? widget.focusedFilledColor
                      : widget.filledColor ?? kwhite,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.bordercolor ?? kgrey2, width: 1),
                    borderRadius: BorderRadius.circular(widget.radius ?? 10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: widget.bordercolor ?? kpurple1, width: 1),
                    borderRadius: BorderRadius.circular(widget.radius ?? 10),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



// ignore: must_be_immutable
// class MyTextField2 extends StatelessWidget {
//   MyTextField2(
//       {Key? key,
//       this.controller,
//       this.hint,
//       this.label,
//       this.onChanged,
//       this.isObSecure = false,
//       this.marginBottom = 16.0,
//       this.maxLines = 1,
//       this.filledColor,
//       this.hintColor,
//       this.labelColor,
//       this.haveLabel = true,
//       this.labelSize,
//       this.prefix,
//       this.suffix,
//       this.labelWeight,
//       this.kBorderColor,
//       this.kFocusBorderColor,
//       this.isReadOnly,
//       this.onTap,
//       this.focusNode})
//       : super(key: key);
//   String? label, hint;

//   TextEditingController? controller;
//   ValueChanged<String>? onChanged;
//   bool? isObSecure, haveLabel, isReadOnly;
//   double? marginBottom;
//   int? maxLines;
//   double? labelSize;
//   FocusNode? focusNode;
//   Color? filledColor, hintColor, kBorderColor, kFocusBorderColor, labelColor;
//   Widget? prefix, suffix;
//   FontWeight? labelWeight;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: marginBottom!),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           if (label != null)
//             MyText(
//               text: label ?? '',
//               size:labelSize?? 21,
//               color: labelColor ?? kblack2,
//               paddingBottom: 8,
//               weight: labelWeight ?? FontWeight.w700,
//             ),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(30),
//             child: TextFormField(
//               focusNode: focusNode,
//               onTap: onTap,
//               textAlignVertical: prefix != null || suffix != null
//                   ? TextAlignVertical.center
//                   : null,
//               cursorColor: kblack2,
//               maxLines: maxLines,
//               readOnly: isReadOnly ?? false,
//               controller: controller,
//               onChanged: onChanged,
//               textInputAction: TextInputAction.next,
//               obscureText: isObSecure!,
//               obscuringCharacter: '*',
//               style: TextStyle(
//                 fontSize: 14,
//                 color: kblack2,
//                 fontFamily: AppFonts.LATO,
//               ),
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: filledColor ?? kwhite,
//                 prefixIcon: prefix,
//                 suffixIcon: suffix,
//                 contentPadding: EdgeInsets.symmetric(
//                   horizontal: 15,
//                   vertical: maxLines! > 1 ? 15 : 0,
//                 ),
//                 hintText: hint,
//                 hintStyle: TextStyle(
//                   fontSize: 14,
//                   fontFamily: AppFonts.LATO,
//                   color: hintColor ?? kblack2,
//                 ),
//                 border: InputBorder.none,
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: kBorderColor ?? kwhite,
//                     width: 1,
//                   ),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: kFocusBorderColor ?? kwhite,
//                     width: 1,
//                   ),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 errorBorder: InputBorder.none,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }