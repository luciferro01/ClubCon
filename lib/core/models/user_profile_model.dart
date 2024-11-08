import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserProfileModel {
  final int id;
  final String username;
  final String email;
  final String userType;
  final bool isAdmin;
  final String status;
  final int organizationId;
  final bool isVerified;
  final Profile profile;
  final List<dynamic> departments;
  final List<dynamic> societies;

  UserProfileModel({
    required this.id,
    required this.username,
    required this.email,
    required this.userType,
    required this.isAdmin,
    required this.status,
    required this.organizationId,
    required this.isVerified,
    required this.profile,
    required this.departments,
    required this.societies,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      userType: json['userType'],
      isAdmin: json['isAdmin'],
      status: json['status'],
      organizationId: json['organizationId'],
      isVerified: json['isVerified'],
      profile: Profile.fromJson(json['profile']),
      departments: json['departments'],
      societies: json['societies'],
    );
  }

  UserProfileModel copyWith({
    int? id,
    String? username,
    String? email,
    String? userType,
    bool? isAdmin,
    String? status,
    int? organizationId,
    bool? isVerified,
    Profile? profile,
    List<dynamic>? departments,
    List<dynamic>? societies,
  }) {
    return UserProfileModel(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      userType: userType ?? this.userType,
      isAdmin: isAdmin ?? this.isAdmin,
      status: status ?? this.status,
      organizationId: organizationId ?? this.organizationId,
      isVerified: isVerified ?? this.isVerified,
      profile: profile ?? this.profile,
      departments: departments ?? this.departments,
      societies: societies ?? this.societies,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'userType': userType,
      'isAdmin': isAdmin,
      'status': status,
      'organizationId': organizationId,
      'isVerified': isVerified,
      'profile': profile.toMap(),
      'departments': departments,
      'societies': societies,
    };
  }

  factory UserProfileModel.fromMap(Map<String, dynamic> map) {
    return UserProfileModel(
      id: map['id']?.toInt() ?? 0,
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      userType: map['userType'] ?? '',
      isAdmin: map['isAdmin'] ?? false,
      status: map['status'] ?? '',
      organizationId: map['organizationId']?.toInt() ?? 0,
      isVerified: map['isVerified'] ?? false,
      profile: Profile.fromMap(map['profile']),
      departments: List<dynamic>.from(map['departments']),
      societies: List<dynamic>.from(map['societies']),
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'UserProfileModel(id: $id, username: $username, email: $email, userType: $userType, isAdmin: $isAdmin, status: $status, organizationId: $organizationId, isVerified: $isVerified, profile: $profile, departments: $departments, societies: $societies)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserProfileModel &&
        other.id == id &&
        other.username == username &&
        other.email == email &&
        other.userType == userType &&
        other.isAdmin == isAdmin &&
        other.status == status &&
        other.organizationId == organizationId &&
        other.isVerified == isVerified &&
        other.profile == profile &&
        listEquals(other.departments, departments) &&
        listEquals(other.societies, societies);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        email.hashCode ^
        userType.hashCode ^
        isAdmin.hashCode ^
        status.hashCode ^
        organizationId.hashCode ^
        isVerified.hashCode ^
        profile.hashCode ^
        departments.hashCode ^
        societies.hashCode;
  }
}

class Profile {
  final String firstName;
  final String lastName;
  final String bio;
  final String avatar;
  final String enrollmentDate;
  final String collegeRollNo;
  final String univRollNo;
  final int yearOfStudy;
  final String academicStatus;
  final String designation;
  final String specialization;
  final String joiningDate;

  Profile({
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.avatar,
    required this.enrollmentDate,
    required this.collegeRollNo,
    required this.univRollNo,
    required this.yearOfStudy,
    required this.academicStatus,
    required this.designation,
    required this.specialization,
    required this.joiningDate,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      firstName: json['firstName'],
      lastName: json['lastName'],
      bio: json['bio'],
      avatar: json['avatar'],
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

  Profile copyWith({
    String? firstName,
    String? lastName,
    String? bio,
    String? avatar,
    String? enrollmentDate,
    String? collegeRollNo,
    String? univRollNo,
    int? yearOfStudy,
    String? academicStatus,
    String? designation,
    String? specialization,
    String? joiningDate,
  }) {
    return Profile(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      bio: bio ?? this.bio,
      avatar: avatar ?? this.avatar,
      enrollmentDate: enrollmentDate ?? this.enrollmentDate,
      collegeRollNo: collegeRollNo ?? this.collegeRollNo,
      univRollNo: univRollNo ?? this.univRollNo,
      yearOfStudy: yearOfStudy ?? this.yearOfStudy,
      academicStatus: academicStatus ?? this.academicStatus,
      designation: designation ?? this.designation,
      specialization: specialization ?? this.specialization,
      joiningDate: joiningDate ?? this.joiningDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'bio': bio,
      'avatar': avatar,
      'enrollmentDate': enrollmentDate,
      'collegeRollNo': collegeRollNo,
      'univRollNo': univRollNo,
      'yearOfStudy': yearOfStudy,
      'academicStatus': academicStatus,
      'designation': designation,
      'specialization': specialization,
      'joiningDate': joiningDate,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      bio: map['bio'] ?? '',
      avatar: map['avatar'] ?? '',
      enrollmentDate: map['enrollmentDate'] ?? '',
      collegeRollNo: map['collegeRollNo'] ?? '',
      univRollNo: map['univRollNo'] ?? '',
      yearOfStudy: map['yearOfStudy']?.toInt() ?? 0,
      academicStatus: map['academicStatus'] ?? '',
      designation: map['designation'] ?? '',
      specialization: map['specialization'] ?? '',
      joiningDate: map['joiningDate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Profile(firstName: $firstName, lastName: $lastName, bio: $bio, avatar: $avatar, enrollmentDate: $enrollmentDate, collegeRollNo: $collegeRollNo, univRollNo: $univRollNo, yearOfStudy: $yearOfStudy, academicStatus: $academicStatus, designation: $designation, specialization: $specialization, joiningDate: $joiningDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Profile &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.bio == bio &&
        other.avatar == avatar &&
        other.enrollmentDate == enrollmentDate &&
        other.collegeRollNo == collegeRollNo &&
        other.univRollNo == univRollNo &&
        other.yearOfStudy == yearOfStudy &&
        other.academicStatus == academicStatus &&
        other.designation == designation &&
        other.specialization == specialization &&
        other.joiningDate == joiningDate;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        bio.hashCode ^
        avatar.hashCode ^
        enrollmentDate.hashCode ^
        collegeRollNo.hashCode ^
        univRollNo.hashCode ^
        yearOfStudy.hashCode ^
        academicStatus.hashCode ^
        designation.hashCode ^
        specialization.hashCode ^
        joiningDate.hashCode;
  }
}
