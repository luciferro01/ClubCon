class UserModel {
  final int id;
  final String username;
  final String email;
  final String? userType;
  final bool? isAdmin;
  final String? status;
  final int organizationId;
  final bool? isVerified;
  final UserProfileModel? profile;
  final List<dynamic>? departments;
  final List<dynamic>? societies;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    this.userType,
    this.isAdmin,
    this.status,
    required this.organizationId,
    this.isVerified,
    this.profile,
    this.departments,
    this.societies,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      userType: json['userType'],
      isAdmin: json['isAdmin'],
      status: json['status'],
      organizationId: json['organizationId'],
      isVerified: json['isVerified'],
      profile: json['profile'] != null
          ? UserProfileModel.fromJson(json['profile'])
          : null,
      departments: json['departments'],
      societies: json['societies'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'username': username,
      'email': email,
      'organizationId': organizationId,
    };

    if (userType != null) data['userType'] = userType;
    if (isAdmin != null) data['isAdmin'] = isAdmin;
    if (status != null) data['status'] = status;
    if (isVerified != null) data['isVerified'] = isVerified;
    if (profile != null) data['profile'] = profile!.toJson();
    if (departments != null) data['departments'] = departments;
    if (societies != null) data['societies'] = societies;

    return data;
  }
}

class UserProfileModel {
  final String? firstName;
  final String? lastName;
  final String? bio;
  final String? avatar;
  final String? contactNumber;
  final String? enrollmentDate;
  final String? collegeRollNo;
  final String? univRollNo;
  final int? yearOfStudy;
  final String? academicStatus;
  final String? designation;
  final String? specialization;
  final String? joiningDate;

  UserProfileModel({
    this.firstName,
    this.lastName,
    this.bio,
    this.avatar,
    this.contactNumber,
    this.enrollmentDate,
    this.collegeRollNo,
    this.univRollNo,
    this.yearOfStudy,
    this.academicStatus,
    this.designation,
    this.specialization,
    this.joiningDate,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      bio: json['bio'],
      avatar: json['avatar'],
      contactNumber: json['contactNumber'],
      enrollmentDate: json['enrollmentDate'],
      collegeRollNo: json['collegeRollNo'],
      univRollNo: json['univRollNo'],
      yearOfStudy: json['yearOfStudy'],
      academicStatus: json['academicStatus'],
      designation: json['designation'],
      specialization: json['specialization'],
      joiningDate: json['joiningDate'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (firstName != null) data['firstName'] = firstName;
    if (lastName != null) data['lastName'] = lastName;
    if (bio != null) data['bio'] = bio;
    if (avatar != null) data['avatar'] = avatar;
    if (contactNumber != null) data['contactNumber'] = contactNumber;
    if (enrollmentDate != null) data['enrollmentDate'] = enrollmentDate;
    if (collegeRollNo != null) data['collegeRollNo'] = collegeRollNo;
    if (univRollNo != null) data['univRollNo'] = univRollNo;
    if (yearOfStudy != null) data['yearOfStudy'] = yearOfStudy;
    if (academicStatus != null) data['academicStatus'] = academicStatus;
    if (designation != null) data['designation'] = designation;
    if (specialization != null) data['specialization'] = specialization;
    if (joiningDate != null) data['joiningDate'] = joiningDate;

    return data;
  }
}
