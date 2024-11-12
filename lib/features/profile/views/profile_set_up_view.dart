import 'dart:io';

import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/features/profile/widgets/clip_header_widget.dart';

import 'package:clubcon/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';
import '../../../widgets/custom_input_field.dart';
import '../controllers/profile_controller.dart';

class ProfileSetupScreen extends StatelessWidget {
  final ProfileController _profileController = Get.find<ProfileController>();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: _profileController.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Stack(
                  children: [
                    Hero(
                      tag: "Profile Header Widget",
                      child: ClipHeaderWidget(
                        title: "Profile Setup",
                        svgAsset: SvgAssets.arrowLeftSmall,
                        onTap: () => Get.back(),
                        backgroundImage: ImageAssets.leaves,
                      ),
                    ),
                    Positioned(
                      top: 180.h, // Adjust this value to control the overlap
                      left: MediaQuery.of(context).size.width / 2 -
                          50.r, // Center the CircleAvatar
                      child: GestureDetector(
                        onTap: _profileController.pickImage,
                        child: Obx(() {
                          return CircleAvatar(
                            radius: 50.r,
                            backgroundImage:
                                _profileController.profileImage.value != null
                                    ? FileImage(File(_profileController
                                        .profileImage.value!.path))
                                    : null,
                            child: _profileController.profileImage.value == null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(200.r),
                                    child: const Image(
                                      image: NetworkImage(
                                              "https://static.vecteezy.com/system/resources/previews/011/490/381/large_2x/happy-smiling-young-man-avatar-3d-portrait-of-a-man-cartoon-character-people-illustration-isolated-on-white-background-vector.jpg")
                                          as ImageProvider,
                                    ),
                                  )
                                : null,
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: defaultHorizontalPadding.w,
                          right: defaultHorizontalPadding.w,
                          top: 260
                              .h), // Adjust this value to control the form position
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(height: defaultSpacing.h * 2),
                            CustomInputField(
                              labelText: 'First Name',
                              hintText: 'Enter your first name',
                              controller:
                                  _profileController.firstNameController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.user,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                              validator: Validators.validateName,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Last Name',
                              hintText: 'Enter your last name',
                              controller: _profileController.lastNameController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.user,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                              validator: Validators.validateName,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Bio',
                              hintText: 'Enter your bio',
                              controller: _profileController.bioController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.user,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Contact Number',
                              hintText: 'Enter your contact number',
                              controller:
                                  _profileController.contactNumberController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.phone,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              keyboardType: TextInputType.phone,
                              isEnabled: _profileController.isEnabled,
                              validator: Validators.validateContactNumber,
                              maxLength: 10,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Email Address',
                              hintText: 'Enter your email address',
                              controller: _profileController.emailController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.email,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              isEnabled: _profileController.isEnabled,
                              validator: Validators.validateEmail,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Enrollment Date',
                              hintText: 'Enter your enrollment date',
                              controller:
                                  _profileController.enrollmentDateController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.calendar,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              keyboardType: TextInputType.datetime,
                              isEnabled: _profileController.isEnabled,
                              additionalInputWidget: GestureDetector(
                                onTap: () async {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  await _profileController.pickDate(
                                      context,
                                      _profileController
                                          .enrollmentDateController);
                                },
                                child: AbsorbPointer(
                                  child: TextFormField(
                                    controller: _profileController
                                        .enrollmentDateController,
                                    decoration: InputDecoration(
                                      prefixIcon: SizedBox(
                                        height: 24.h,
                                        width: 24.w,
                                        child: SvgPicture.asset(
                                          SvgAssets.calendar,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'College Roll No',
                              hintText: 'Enter your college roll number',
                              controller:
                                  _profileController.collegeRollNoController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.idCard,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                              validator: Validators.validateRollNumber,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'University Roll No',
                              hintText: 'Enter your university roll number',
                              controller:
                                  _profileController.univRollNoController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.idCard,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                              validator: Validators.validateRollNumber,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Year of Study',
                              hintText: 'Enter your year of study',
                              controller:
                                  _profileController.yearOfStudyController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.calendar,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              isEnabled: _profileController.isEnabled,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Status',
                              hintText: 'Select your status',
                              additionalInputWidget: Obx(() {
                                return DropdownButtonFormField<String>(
                                  value:
                                      _profileController.academicStatus.value,
                                  items: _profileController.academicStatuses
                                      .map((status) => DropdownMenuItem<String>(
                                            value: status,
                                            child: Text(status),
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    _profileController.academicStatus.value =
                                        value!;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                );
                              }),
                              isEnabled: _profileController.isEnabled,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Gender',
                              hintText: 'Select your gender',
                              additionalInputWidget: Obx(() {
                                return DropdownButtonFormField<String>(
                                  value: _profileController.gender.value,
                                  items: _profileController.genders
                                      .map((gender) => DropdownMenuItem<String>(
                                            value: gender,
                                            child: Text(gender),
                                          ))
                                      .toList(),
                                  onChanged: (value) {
                                    _profileController.gender.value = value!;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                  ),
                                );
                              }),
                              isEnabled: _profileController.isEnabled,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Designation',
                              hintText: 'Enter your designation',
                              controller:
                                  _profileController.designationController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.question,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                            ),
                            SizedBox(height: defaultSpacing.h),
                            CustomInputField(
                              labelText: 'Specialization',
                              hintText: 'Enter your specialization',
                              controller:
                                  _profileController.specializationController,
                              prefixIcon: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  SvgAssets.book,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              isEnabled: _profileController.isEnabled,
                            ),
                            // SizedBox(height: defaultSpacing.h),
                            // CustomInputField(
                            //   labelText: 'Joining Date',
                            //   hintText: 'Enter your joining date',
                            //   controller: _profileController.joiningDateController,
                            //   prefixIcon: SizedBox(
                            //     height: 24.h,
                            //     width: 24.w,
                            //     child: SvgPicture.asset(
                            //       SvgAssets.calendar,
                            //       fit: BoxFit.scaleDown,
                            //     ),
                            //   ),
                            //   keyboardType: TextInputType.datetime,
                            //   isEnabled: _profileController.isEnabled,
                            //   additionalInputWidget: GestureDetector(
                            //     onTap: () async {
                            //       FocusScope.of(context).requestFocus(FocusNode());
                            //       await _profileController.pickDate(context,
                            //           _profileController.joiningDateController);
                            //     },
                            //     child: AbsorbPointer(
                            //       child: TextFormField(
                            //         controller:
                            //             _profileController.joiningDateController,
                            //         decoration: InputDecoration(
                            //           prefixIcon: SizedBox(
                            //             height: 24.h,
                            //             width: 24.w,
                            //             child: SvgPicture.asset(
                            //               SvgAssets.calendar,
                            //               fit: BoxFit.scaleDown,
                            //             ),
                            //           ),
                            //           border: OutlineInputBorder(
                            //             borderRadius: BorderRadius.circular(12.r),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            SizedBox(height: defaultSpacing.h),

                            ElevatedButton(
                              onPressed: () {
                                if (_profileController.isEnabled) {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    _profileController.createOrUpdateProfile();
                                  }
                                } else {
                                  Get.back();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1000),
                                ),
                                minimumSize: const Size(double.infinity, 56),
                              ),
                              child: _profileController.isEnabled
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Save Profile'),
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
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 24.h,
                                          width: 24.w,
                                          child: SvgPicture.asset(
                                            SvgAssets.arrowLeftSmall,
                                            colorFilter: const ColorFilter.mode(
                                              Colors.white,
                                              BlendMode.srcIn,
                                            ),
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                        SizedBox(
                                          width: defaultHorizontalPadding.w,
                                        ),
                                        const Text('Go Back'),
                                      ],
                                    ),
                            ),
                            SizedBox(height: defaultSpacing.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
