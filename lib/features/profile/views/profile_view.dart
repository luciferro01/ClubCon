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
  // final ProfileSetupController controller = Get.find<ProfileSetupController>();
  final ProfileSetupController controller = Get.put(ProfileSetupController());
  // final bool isEnabled = Get.arguments["isEdit"] ?? false;
  // final bool isEnabled =
  //     Get.arguments != null && Get.arguments["isEdit"] == true;

  //TODO: isEnabled value is incorrect
  final bool isEnabled = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(check);
    print(Get.arguments);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipHeaderWidget(
              title: "Profile Setup",
              svgAsset: SvgAssets.arrowLeftSmall,
              onTap: () => Get.back(),
            ),
            Positioned(
              top: 180.h, // Adjust this value to control the overlap
              left: MediaQuery.of(context).size.width / 2 -
                  50.r, // Center the CircleAvatar
              child: GestureDetector(
                onTap: controller.pickImage,
                child: Obx(() {
                  return CircleAvatar(
                    radius: 50.r,
                    backgroundImage: controller.profileImage.value != null
                        ? FileImage(File(controller.profileImage.value!.path))
                        : null,
                    child: controller.profileImage.value == null
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
                  top: 260.h), // Adjust this value to control the form position
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: defaultSpacing.h * 2),
                    CustomInputField(
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
                      controller: controller.firstNameController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.user,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                      validator: Validators.validateName,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Last Name',
                      hintText: 'Enter your last name',
                      controller: controller.lastNameController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.user,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                      validator: Validators.validateName,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Bio',
                      hintText: 'Enter your bio',
                      controller: controller.bioController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.user,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Contact Number',
                      hintText: 'Enter your contact number',
                      controller: controller.contactNumberController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.phone,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      isEnabled: controller.isEnabled.value,
                      validator: Validators.validateContactNumber,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Email Address',
                      hintText: 'Enter your email address',
                      controller: controller.emailController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.email,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      isEnabled: controller.isEnabled.value,
                      validator: Validators.validateEmail,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Enrollment Date',
                      hintText: 'Enter your enrollment date',
                      controller: controller.enrollmentDateController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.calendar,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                      isEnabled: controller.isEnabled.value,
                      additionalInputWidget: GestureDetector(
                        onTap: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          await controller.pickDate(
                              context, controller.enrollmentDateController);
                        },
                        child: AbsorbPointer(
                          child: TextFormField(
                            controller: controller.enrollmentDateController,
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
                                borderRadius: BorderRadius.circular(12.r),
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
                      controller: controller.collegeRollNoController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.idCard,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                      validator: Validators.validateRollNumber,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'University Roll No',
                      hintText: 'Enter your university roll number',
                      controller: controller.univRollNoController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.idCard,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                      validator: Validators.validateRollNumber,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Year of Study',
                      hintText: 'Enter your year of study',
                      controller: controller.yearOfStudyController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.calendar,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      isEnabled: controller.isEnabled.value,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Status',
                      hintText: 'Select your status',
                      additionalInputWidget: Obx(() {
                        return DropdownButtonFormField<String>(
                          value: controller.academicStatus.value,
                          items: controller.academicStatuses
                              .map((status) => DropdownMenuItem<String>(
                                    value: status,
                                    child: Text(status),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            controller.academicStatus.value = value!;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        );
                      }),
                      isEnabled: controller.isEnabled.value,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Gender',
                      hintText: 'Select your gender',
                      additionalInputWidget: Obx(() {
                        return DropdownButtonFormField<String>(
                          value: controller.gender.value,
                          items: controller.genders
                              .map((gender) => DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            controller.gender.value = value!;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        );
                      }),
                      isEnabled: controller.isEnabled.value,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Designation',
                      hintText: 'Enter your designation',
                      controller: controller.designationController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.question,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Specialization',
                      hintText: 'Enter your specialization',
                      controller: controller.specializationController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.book,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      isEnabled: controller.isEnabled.value,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    CustomInputField(
                      labelText: 'Joining Date',
                      hintText: 'Enter your joining date',
                      controller: controller.joiningDateController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.calendar,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                      isEnabled: controller.isEnabled.value,
                      additionalInputWidget: GestureDetector(
                        onTap: () async {
                          FocusScope.of(context).requestFocus(FocusNode());
                          await controller.pickDate(
                              context, controller.joiningDateController);
                        },
                        child: AbsorbPointer(
                          child: TextFormField(
                            controller: controller.joiningDateController,
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
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // TODO: Implement save profile logic
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        minimumSize: const Size(double.infinity, 56),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Save Profile'),
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
