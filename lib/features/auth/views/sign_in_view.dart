// import 'package:flutter/material.dart';

// class SignInForm extends StatefulWidget {
//   const SignInForm({Key? key}) : super(key: key);

//   @override
//   _SignInFormState createState() => _SignInFormState();
// }

// class _SignInFormState extends State<SignInForm> {
//   final _formKey = GlobalKey<FormState>();
//   String _email = '';
//   String _password = '';
//   bool _obscurePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 375,
//       decoration: BoxDecoration(
//         color: const Color(0xFFF7F4F2),
//         borderRadius: BorderRadius.circular(40),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Sign In To freud.ai',
//                 style: TextStyle(
//                   color: Color(0xFF4F3422),
//                   fontSize: 30,
//                   fontWeight: FontWeight.w800,
//                   fontFamily: 'Urbanist',
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 48),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Email Address',
//                   prefixIcon: const Icon(Icons.email),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(1234),
//                   ),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _email = value!,
//               ),
//               const SizedBox(height: 24),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: const Icon(Icons.lock),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _obscurePassword
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(1234),
//                   ),
//                 ),
//                 obscureText: _obscurePassword,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _password = value!,
//               ),
//               const SizedBox(height: 24),
//               ElevatedButton(
//                 child: const Text('Sign In'),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     // TODO: Implement sign in logic
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   // primary: const Color(0xFF4F3422),

//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(1000),
//                   ),
//                   minimumSize: const Size(double.infinity, 56),
//                 ),
//               ),
//               const SizedBox(height: 48),
//               const Center(
//                 child: Text(
//                   "Don't have an account? Sign Up.",
//                   style: TextStyle(
//                     color: Color(0xFF9BB167),
//                     fontWeight: FontWeight.w700,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               const Center(
//                 child: Text(
//                   "Forgot Password",
//                   style: TextStyle(
//                     color: Color(0xFF9BB167),
//                     fontWeight: FontWeight.w700,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:clubcon/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInView extends StatefulWidget {
  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.14,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 102, 0),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(150)),
              ),
              child: SvgPicture.asset(
                SvgAssets.solidMenu,
                height: 5,
                width: 6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sign In To freud.ai',
                      style: TextStyle(
                        color: Color(0xFF4F3422),
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Urbanist',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 48),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: const Icon(Icons.email),
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
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
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
                      child: const Text('Sign In'),
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
                    ),
                    const SizedBox(height: 48),
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
