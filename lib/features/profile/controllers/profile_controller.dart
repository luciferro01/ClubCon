import 'package:clubcon/core/models/user_profile_model.dart';
import 'package:clubcon/core/services/user_service.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final UserService _userService = Get.find();
  var userProfile = Rxn<UserModel>();
  RxBool isLoading = false.obs;

  // TextEditingControllers for profile fields
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final bioController = TextEditingController();
  final contactNumberController = TextEditingController();
  final emailController = TextEditingController();
  final enrollmentDateController = TextEditingController();
  final collegeRollNoController = TextEditingController();
  final univRollNoController = TextEditingController();
  final yearOfStudyController = TextEditingController();
  final academicStatusController = TextEditingController();
  final designationController = TextEditingController();
  final specializationController = TextEditingController();
  // final joiningDateController = TextEditingController();
  var obscurePassword = false.obs;
  final RxBool _isEnabled = true.obs;

  bool get isEnabled => _isEnabled.value;

  void isEditEnabled(bool isEdit) {
    _isEnabled.value = isEdit;
  }

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      _isEnabled.value = Get.arguments["isEdit"] ?? false;
    }
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    isLoading.value = true;
    final result = await _userService.fetchUserProfile();
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occurred"),
      (profile) {
        userProfile.value = profile;
        // Populate controllers with fetched profile data
        firstNameController.text = profile.profile?.firstName ?? '';
        lastNameController.text = profile.profile?.lastName ?? '';
        bioController.text = profile.profile?.bio ?? '';
        contactNumberController.text = profile.profile?.avatar ?? '';
        emailController.text = profile.email;
        enrollmentDateController.text = profile.profile?.enrollmentDate ?? '';
        collegeRollNoController.text = profile.profile?.collegeRollNo ?? '';
        univRollNoController.text = profile.profile?.univRollNo ?? '';
        yearOfStudyController.text =
            profile.profile?.yearOfStudy?.toString() ?? '';
        academicStatusController.text = profile.profile?.academicStatus ?? '';
        designationController.text = profile.profile?.designation ?? '';
        specializationController.text = profile.profile?.specialization ?? '';
        // joiningDateController.text = profile.profile?.joiningDate ?? '';
      },
    );
    isLoading.value = false;
  }

  Future<void> createOrUpdateProfile() async {
    isLoading.value = true;
    final profile = UserProfileModel(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      bio: bioController.text,
      avatar: contactNumberController.text,
      contactNumber: contactNumberController.text,
      enrollmentDate: enrollmentDateController.text,
      collegeRollNo: collegeRollNoController.text,
      univRollNo: univRollNoController.text,
      yearOfStudy: int.tryParse(yearOfStudyController.text),
      academicStatus: academicStatusController.text,
      designation: designationController.text,
      specialization: specializationController.text,
      // joiningDate: joiningDateController.text,
    );

    final result = await _userService.createOrUpdateProfile(profile);
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occurred"),
      (success) {
        Get.snackbar('Success', 'Profile updated successfully');
        fetchUserProfile(); // Refresh profile data
      },
    );
    isLoading.value = false;
  }

  Future<void> logout() async {
    isLoading.value = true;
    final result = await _userService.logout();
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occurred"),
      (success) {
        userProfile.value = null;
        Get.offAllNamed(Routes.welcomeViewRoute);
      },
    );
    isLoading.value = false;
  }

  void toggleObscurePassword() {
    obscurePassword.value = !obscurePassword.value;
  }

  var accountType = 'Student'.obs;
  var weight = 65.0.obs;
  var gender = 'Male'.obs;
  var academicStatus = 'Active'.obs;
  var location = 'Tokyo, Japan'.obs;
  var profileImage = Rx<XFile?>(null);

  final List<String> genders = ['Male', 'Female', 'Trans'];
  final List<String> locations = [
    'Tokyo, Japan',
    'New York, USA',
    'Delhi, India'
  ];
  final academicStatuses = ['Active', 'Inactive'];

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    profileImage.value = await picker.pickImage(source: ImageSource.gallery);
  }

  Future<void> pickDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      controller.text = pickedDate.toLocal().toString().split(' ')[0];
    }
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    bioController.dispose();
    contactNumberController.dispose();
    emailController.dispose();
    enrollmentDateController.dispose();
    collegeRollNoController.dispose();
    univRollNoController.dispose();
    yearOfStudyController.dispose();
    academicStatusController.dispose();
    designationController.dispose();
    specializationController.dispose();
    // joiningDateController.dispose();
    super.onClose();
  }
}
