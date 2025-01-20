import 'package:flutter/widgets.dart';

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
  final List<dynamic>? events;

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
    this.events,
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
      events: json['events'],
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
    if (events != null) data['events'] = events;

    return data;
  }

  UserModel copyWith({
    int? id,
    String? username,
    String? email,
    ValueGetter<String?>? userType,
    ValueGetter<bool?>? isAdmin,
    ValueGetter<String?>? status,
    int? organizationId,
    ValueGetter<bool?>? isVerified,
    ValueGetter<UserProfileModel?>? profile,
    ValueGetter<List<dynamic>?>? departments,
    ValueGetter<List<dynamic>?>? societies,
    ValueGetter<List<dynamic>?>? events,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      userType: userType != null ? userType() : this.userType,
      isAdmin: isAdmin != null ? isAdmin() : this.isAdmin,
      status: status != null ? status() : this.status,
      organizationId: organizationId ?? this.organizationId,
      isVerified: isVerified != null ? isVerified() : this.isVerified,
      profile: profile != null ? profile() : this.profile,
      departments: departments != null ? departments() : this.departments,
      societies: societies != null ? societies() : this.societies,
      events: events != null ? events() : this.events,
    );
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

  @override
  String toString() {
    return 'UserProfileModel(firstName: $firstName, lastName: $lastName, bio: $bio, avatar: $avatar, contactNumber: $contactNumber, enrollmentDate: $enrollmentDate, collegeRollNo: $collegeRollNo, univRollNo: $univRollNo, yearOfStudy: $yearOfStudy, academicStatus: $academicStatus, designation: $designation, specialization: $specialization, joiningDate: $joiningDate)';
  }
}
