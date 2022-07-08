import 'package:flutter/material.dart';

void Function()? buttonFun;

class GradientButton extends StatefulWidget {
  GradientButton({
    Key? key,
    this.height,
    this.width,
    this.color1,
    this.color2,
    this.title = "Title",
    this.textColor = Colors.black,
    this.titleStyle,
    this.buttonFunctionality,
  }) {
    buttonFun = buttonFunctionality;
  }

  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final TextStyle? titleStyle;
  final void Function()? buttonFunctionality;

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonFun,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: [
              widget.color1 ?? const Color(0xFF000000),
              widget.color2 ?? const Color(0xFFFFFFFF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            '${widget.title}',
            style: widget.titleStyle ??
                TextStyle(
                  color: widget.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
