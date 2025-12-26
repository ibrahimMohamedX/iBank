import 'package:flutter/material.dart';
import 'package:ibank/core/consts/colors_data.dart';

class MainTextField extends StatefulWidget {
  const MainTextField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
  });

  final String labelText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? controller;

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText == true ? !isvisible : false,
      cursorColor: ColorsData.prim1,
      style: TextStyle(color: ColorsData.dark),
      decoration: InputDecoration(
        suffixIcon: widget.obscureText == true
            ? InkWell(
                onTap: () {
                  setState(() {
                    isvisible = !isvisible;
                  });
                },
                child: Icon(
                  isvisible ? Icons.visibility_off : Icons.visibility,
                  color: ColorsData.gray,
                ),
              )
            : widget.suffixIcon ?? null,
        labelText: widget.labelText,
        floatingLabelStyle: TextStyle(color: ColorsData.dark),
        labelStyle: TextStyle(color: ColorsData.gray),

        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorsData.gray),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: ColorsData.dark),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
