import 'package:flutter/material.dart';

class MediaButton extends StatelessWidget {
  final Widget widget;
  final Size minSize;
  final Function() onPressed;
  const MediaButton({
    super.key,
    required this.widget,
    required this.minSize,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        overlayColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        minimumSize: minSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200),
        ),
      ),
      onPressed: onPressed,
      child: widget,
    );
  }
}
