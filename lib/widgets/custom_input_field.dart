import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/ui_constants.dart'; // For Obx

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final bool? hasBorder;
  final Color? fillColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isEnabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final bool? obscureText;
  final Function(String)? onChanged;
  final Widget? additionalInputWidget;
  final String? errorText;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final bool useObx;
  final int? maxLength;

  const CustomInputField({
    super.key,
    this.labelText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.isEnabled = true,
    this.prefixIcon,
    this.initialValue,
    this.onChanged,
    this.hintText,
    this.additionalInputWidget,
    this.errorText,
    this.useObx = false,
    this.suffixIcon,
    this.validator,
    this.obscureText,
    this.hasBorder,
    this.fillColor,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    final Widget inputField = Container(
      // padding: EdgeInsets.symmetric(horizontal: 16.h), // Adjust padding
      padding: EdgeInsets.only(
          left: defaultHorizontalPadding.w / 2,
          right: defaultVerticalPadding.h / 2),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null)
            Text(
              labelText!,
              style: TextStyle(
                fontSize: 16.sp,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          SizedBox(height: defaultSpacing.h * 0.1),
          additionalInputWidget != null
              ? additionalInputWidget!
              : TextFormField(
                  controller: controller,
                  enabled: isEnabled,
                  keyboardType: keyboardType,
                  onChanged: onChanged,
                  validator: validator,
                  obscureText: obscureText ?? false,
                  decoration: InputDecoration(
                    fillColor: fillColor,
                    hintText: hintText,
                    suffixIcon: suffixIcon,
                    prefixIcon: prefixIcon,
                    border: hasBorder == null
                        ? OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(defaultBorderRadious.r),
                          )
                        : null,
                    errorText: errorText,
                  ),
                  // inputFormatters: [
                  //   LengthLimitingTextInputFormatter(10),
                  // ],
                  maxLength: maxLength,
                ),
        ],
      ),
    );

    return useObx ? Obx(() => inputField) : inputField;
  }
}
