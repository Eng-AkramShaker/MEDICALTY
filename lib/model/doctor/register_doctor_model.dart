// To parse this JSON data, do
//
//     final registerDoctorModel = registerDoctorModelFromJson(jsonString);

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

RegisterDoctorModel registerDoctorModelFromJson(String str) =>
    RegisterDoctorModel.fromJson(json.decode(str));

String registerDoctorModelToJson(RegisterDoctorModel data) =>
    json.encode(data.toJson());

class RegisterDoctorModel {
  String? centerId;
  String? departmentId;
  String? specialty;
  String? jobDescription;
  String? username;
  String? name;
  String? ssn;
  String? phone;
  String? workPhone;
  String? email;
  String? password;
  String? workEmail;
  String? registerDoctorModelAbstract;
  String? fullBrief;
  int? jobId;
  DateTime? birthDate;
  int? experienceYears;
  String? address;
  String? salary;
  String? gender;
  String? nationality;
  String? comprehensiveprofiledoctors;
  String? Aboutthedoctor;
  int? YearsExperience;

  RegisterDoctorModel(
      {this.centerId,
      this.departmentId,
      this.specialty,
      this.jobDescription,
      this.username,
      this.name,
      this.ssn,
      this.phone,
      this.workPhone,
      this.email,
      this.password,
      this.workEmail,
      this.registerDoctorModelAbstract,
      this.fullBrief,
      this.jobId,
      this.birthDate,
      this.experienceYears,
      this.address,
      this.salary,
      this.gender,
      this.nationality,
      this.Aboutthedoctor,
      this.comprehensiveprofiledoctors,
      this.YearsExperience});

  factory RegisterDoctorModel.fromJson(Map<String, dynamic> json) =>
      RegisterDoctorModel(
          centerId: json["center_id"],
          departmentId: json["department_id"],
          specialty: json["specialty"],
          jobDescription: json["job_description"],
          username: json["username"],
          name: json["name"],
          ssn: json["ssn"],
          phone: json["phone"],
          workPhone: json["work_phone"],
          email: json["email"],
          password: json["password"],
          workEmail: json["work_email"],
          registerDoctorModelAbstract: json["abstract"],
          fullBrief: json["full_brief"],
          jobId: json["job_id"],
          birthDate: json["birth_date"] == null
              ? null
              : DateTime.parse(json["birth_date"]),
          experienceYears: json["experience_years"],
          address: json["address"],
          salary: json["salary"],
          gender: json["gender"],
          nationality: json["nationality"],
          Aboutthedoctor: json["hello"],
          comprehensiveprofiledoctors: json["what"],
          YearsExperience: json['']);

  Map<String, dynamic> toJson() => {
        "center_id": centerId,
        "department_id": departmentId,
        "specialty": specialty,
        "job_description": jobDescription,
        "username": username,
        "name": name,
        "ssn": ssn,
        "phone": phone,
        "work_phone": workPhone,
        "email": email,
        "password": password,
        "work_email": workEmail,
        "abstract": registerDoctorModelAbstract,
        "full_brief": fullBrief,
        "job_id": jobId,
        "birth_date":
            "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
        "experience_years": experienceYears,
        "address": address,
        "salary": salary,
        "gender": gender,
        "nationality": nationality,
      };
}
