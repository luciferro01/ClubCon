import 'dart:io';

import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/features/profile/widgets/clip_header_widget.dart';
import 'package:clubcon/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';
import '../controllers/profile_controller.dart';

class ProfileSetupScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ProfileSetupController controller = Get.put(ProfileSetupController());

  ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    TextFormField(
                      controller: controller.firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.user,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      validator: Validators.validateName,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.user,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      validator: Validators.validateName,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.bioController,
                      decoration: InputDecoration(
                        labelText: 'Bio',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.user,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.contactNumberController,
                      decoration: InputDecoration(
                        labelText: 'Contact Number',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.phone,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: Validators.validateContactNumber,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.email,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: Validators.validateEmail,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.enrollmentDateController,
                      decoration: InputDecoration(
                        labelText: 'Enrollment Date',
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
                      keyboardType: TextInputType.datetime,
                      onTap: () async {
                        FocusScope.of(context).requestFocus(FocusNode());
                        await controller.pickDate(
                            context, controller.enrollmentDateController);
                      },
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.collegeRollNoController,
                      decoration: InputDecoration(
                        labelText: 'College Roll No',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.idCard,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      validator: Validators.validateRollNumber,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.univRollNoController,
                      decoration: InputDecoration(
                        labelText: 'University Roll No',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.idCard,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      validator: Validators.validateRollNumber,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.yearOfStudyController,
                      decoration: InputDecoration(
                        labelText: 'Year of Study',
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
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    Container(
                      padding:
                          EdgeInsets.only(left: defaultHorizontalPadding.w),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Status",
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Wrap(
                      children: [
                        Obx(() => RadioListTile<String>(
                              title: const Text('Active'),
                              value: 'Active',
                              groupValue: controller.academicStatus.value,
                              onChanged: (value) {
                                controller.academicStatus.value = value!;
                              },
                            )),
                        Obx(() => RadioListTile<String>(
                              title: const Text('Inactive'),
                              value: 'Inactive',
                              groupValue: controller.academicStatus.value,
                              onChanged: (value) {
                                controller.academicStatus.value = value!;
                              },
                            )),
                      ],
                    ),
                    SizedBox(height: defaultSpacing.h),
                    Container(
                      padding: EdgeInsets.only(
                          // top: defaultVerticalPadding.h,
                          left: defaultHorizontalPadding.w),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Gender",
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Obx(() => RadioListTile<String>(
                              title: const Text('Male'),
                              value: 'Male',
                              groupValue: controller.gender.value,
                              onChanged: (value) {
                                controller.gender.value = value!;
                              },
                            )),
                        Obx(() => RadioListTile<String>(
                              title: const Text('Female'),
                              value: 'Female',
                              groupValue: controller.gender.value,
                              onChanged: (value) {
                                controller.gender.value = value!;
                              },
                            )),
                        Obx(() => RadioListTile<String>(
                              title: const Text('Trans'),
                              value: 'Trans',
                              groupValue: controller.gender.value,
                              onChanged: (value) {
                                controller.gender.value = value!;
                              },
                            )),
                      ],
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.designationController,
                      decoration: InputDecoration(
                        labelText: 'Designation',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.question,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.specializationController,
                      decoration: InputDecoration(
                        labelText: 'Specialization',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.book,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h),
                    TextFormField(
                      controller: controller.joiningDateController,
                      decoration: InputDecoration(
                        labelText: 'Joining Date',
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
                      keyboardType: TextInputType.datetime,
                      onTap: () async {
                        FocusScope.of(context).requestFocus(FocusNode());
                        await controller.pickDate(
                            context, controller.joiningDateController);
                      },
                    ),
                    SizedBox(height: defaultSpacing.h),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // TODO: Implement sign in logic
                        }
                        // TODO: Implement save profile logic
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
