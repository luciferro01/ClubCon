import 'package:clubcon/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopLogoWidget extends StatelessWidget {
  const TopLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(SvgAssets.solidMenu);
  }
}
