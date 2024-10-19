import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSetupController extends GetxController {
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
  final joiningDateController = TextEditingController();
  var obscurePassword = false.obs;

  void toggleObscurePassword() {
    obscurePassword.value = !obscurePassword.value;
  }

  var accountType = 'Student'.obs;
  var weight = 65.0.obs;
  var gender = 'Male'.obs;
  var academicStatus = 'Active'.obs;
  var location = 'Tokyo, Japan'.obs;
  var profileImage = Rx<XFile?>(null);

  final genders = ['Male', 'Female', 'Trans'];
  final locations = ['Tokyo, Japan', 'New York, USA', 'Delhi, India'];
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
    joiningDateController.dispose();
    super.onClose();
  }
}
