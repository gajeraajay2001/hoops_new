import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

Widget appTextField(
    {String? hintText,
    String? suffixText,
    Widget? icon,
    bool? readOnly,
    Widget? prefix,
    TextEditingController? controller,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onSubmitted,
    FormFieldValidator<String>? validator,
    TextInputAction? textInputAction = TextInputAction.next,
    TextInputType? textInputType,
    Widget? suffixIcon,
    int? maxLine = 1,
    bool isFromSelf = false}) {
  return TextFormField(
    controller: controller,

    maxLines: maxLine,
    onChanged: onChanged,
    readOnly: readOnly == null ? false : readOnly,
    validator: validator,
    onFieldSubmitted: onSubmitted,
    keyboardType: textInputType,
    textInputAction: textInputAction,
    // style: GoogleFonts.sourceSansPro(fontSize: 16),
    cursorColor: ColorConstant.primaryTheme,
    textCapitalization:
        (isFromSelf) ? TextCapitalization.words : TextCapitalization.none,
    decoration: InputDecoration(
      suffixText: suffixText,
      suffixIcon: suffixIcon,
      prefix: prefix,
      prefixIconConstraints: BoxConstraints(minHeight: 40, minWidth: 40),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      filled: true,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ColorConstant.primaryTheme,
          )),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey,
          )),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ColorConstant.primaryTheme,
          )),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: ColorConstant.primaryTheme,
          )),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.red,
          )),
      prefixIcon: icon,
      // hintStyle: GoogleFonts.sourceSansPro(
      //   color: Colors.grey,
      //   fontSize: 16,
      // ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: ColorConstant.primaryTheme)),
      hintText: hintText,
    ),
  );
}
