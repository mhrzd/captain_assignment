import 'package:flutter/material.dart';

class Snack {
  /// show snack with message in green color
  showSuccessMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style:
            const TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.white,
    ));
  }

  /// show snack with message in red color
  showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.white,
    ));
  }
}
