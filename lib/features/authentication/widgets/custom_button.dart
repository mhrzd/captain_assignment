import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.textColor,
    required this.title,
    this.buttonColor,
    this.expand = false,
  });

  final Function() onTap;
  final bool expand;
  final Color textColor;
  final Color? buttonColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return expand
        ? Row(
            children: [Expanded(child: _Button())],
          )
        : _Button();
  }

  ElevatedButton _Button() {
    return ElevatedButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
            shape: MaterialStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
            shadowColor:
                MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0.5)),
            elevation: const MaterialStatePropertyAll(5),
            padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 15)),
            backgroundColor:
                MaterialStatePropertyAll<Color>(buttonColor ?? Colors.white)),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ));
  }
}
