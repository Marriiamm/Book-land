import 'package:flutter/material.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      this.labelText,
      this.prefixIcon,
      this.onChange,
      this.controller,
      this.obscureText = false});

  String hintText;
  String? labelText;
  IconData? prefixIcon;
  bool? obscureText;
  Function(String)? onChange;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller :controller,
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required!';
        }
        return '';
      },
      onChanged: onChange,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          prefixIcon:Icon(prefixIcon,color: Colors.white,size: 20,)  ,
          fillColor: Colors.black.withOpacity(0.3),
          filled: true,
          errorStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
          labelText: labelText,
          labelStyle: const TextStyle(color:Colors.black,fontFamily: 'Exo2',),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontFamily: 'Exo2',
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: kLightPrimaryColor,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: kLightPrimaryColor,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: kLightPrimaryColor,
              width: 3.0,
            ),
          )),
    );
  }
}
