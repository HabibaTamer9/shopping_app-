import 'package:flutter/material.dart';
class TextFieldTitle extends StatelessWidget {
  const TextFieldTitle({
    super.key,
    required this.title,
    required this.hintText,
    this.isHiddenPassword=true,
    this.suffixIcon,
    required this.validator,
    this.helpText
  });
  final String title;
  final String hintText;
  final bool isHiddenPassword;
  final Widget? suffixIcon;
  final String? Function(String? value) validator;
  final String? helpText ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w500
            ),
          ),
          TextFormField(
            validator: validator,
            obscureText: isHiddenPassword,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey.shade600,fontSize: 16
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade500
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal.shade400
                )
              ),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red
                  )
              ),
              errorStyle: TextStyle(fontSize: 15)
            ),
            style: TextStyle(color: Colors.black,fontSize: 20),
          )
        ],
      ),
    );
  }
}
