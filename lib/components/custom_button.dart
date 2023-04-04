import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  VoidCallback onTap;
  Color? buttonColor;
  Color? textColor;
  double? borderRadius;
  String buttonText;
  double? sizeHeight;
  double? sizeWidth;

  CustomButton({
    required this.onTap,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    required this.buttonText,
    required this.sizeHeight,
    required this.sizeWidth,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.sizeHeight,
      width: widget.sizeWidth,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: widget.buttonColor ?? const Color(0xffBBD6B8),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
           child: Center(
              child: Text(
                widget.buttonText,
                style: TextStyle(
                    color: widget.textColor ?? Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
        ),
      ),
    );
  }
}
