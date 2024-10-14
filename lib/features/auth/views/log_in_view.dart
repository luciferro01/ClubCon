import 'package:clubcon/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/image_constants.dart';

class LogInView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool _obscurePassword = true;

  LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 140.h,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(200.r),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  SvgAssets.solidMenu,
                  height: 50.h,
                  width: 50.w,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: defaultSpacing.h * 3,
            ),
            Padding(
              padding: EdgeInsets.all(16.0.w), // Responsive padding
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In To freud.ai',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30.sp, // Responsive font size
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                    SizedBox(
                      height: defaultSpacing.h * 2,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: SvgPicture.asset(
                          SvgAssets.email,
                          height: 1.h,
                          width: 1.w,
                          fit: BoxFit.scaleDown,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1234),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (value) => _email = value!,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: SizedBox(
                          height: 1.h,
                          width: 1.w,
                          child: SvgPicture.asset(
                            SvgAssets.lock,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   _obscurePassword = !_obscurePassword;
                            // });
                          },
                          child: SvgPicture.asset(
                            _obscurePassword
                                ? SvgAssets.eyeDisabled
                                : SvgAssets.eyeEnabled,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1234),
                        ),
                      ),
                      obscureText: _obscurePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value!,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // TODO: Implement sign in logic
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        // primary: const Color(0xFF4F3422),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        minimumSize: const Size(double.infinity, 56),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Sign In'),
                          SizedBox(
                            width: defaultHorizontalPadding.w,
                          ),
                          SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset(
                              SvgAssets.arrowRightSmall,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h * 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // ListView.separated(
                        //     itemBuilder: (context, index) {
                        //       return Text('Item $index');
                        //     },
                        //     separatorBuilder: (context, index) {
                        //       return SizedBox(
                        //         width: defaultSpacing.w,
                        //       );
                        //     },
                        //     itemCount: 3)
                        SizedBox(
                          height: 1.h,
                          width: 1.w,
                          child: SvgPicture.asset(
                            SvgAssets.apple,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: defaultSpacing.w,
                        ),
                        SizedBox(
                          height: 1.h,
                          width: 1.w,
                          child: SvgPicture.asset(
                            SvgAssets.apple,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(
                          width: defaultSpacing.w,
                        ),
                        SizedBox(
                          height: 1.h,
                          width: 1.w,
                          child: SvgPicture.asset(
                            SvgAssets.apple,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        "Don't have an account? Sign Up.",
                        style: TextStyle(
                          color: Color(0xFF9BB167),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Center(
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Color(0xFF9BB167),
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
