class Token {
  Token({
      this.id, 
      this.centerId, 
      this.departmentId, 
      this.imagePath, 
      this.username, 
      this.name, 
      this.ssn, 
      this.phone, 
      this.workPhone, 
      this.email, 
      this.specialty, 
      this.password, 
      this.workEmail, 
      this.jobDescription, 
      this.abstract, 
      this.fullBrief, 
      this.jobId, 
      this.signature, 
      this.birthDate, 
      this.experienceYears, 
      this.address, 
      this.salary, 
      this.gender, 
      this.nationality, 
      this.createdAt, 
      this.updatedAt, 
      this.token, 
      this.center, 
      this.department, 
      this.doctorExperiences, 
      this.workTimes, 
      this.patients, 
      this.bookingRequests, 
      this.samples, 
      this.reports, 
      this.invoices, 
      this.rates, 
      this.favorites,});

  Token.fromJson(dynamic json) {
    id = json['id'];
    centerId = json['center_id'];
    departmentId = json['department_id'];
    imagePath = json['image_path'];
    username = json['username'];
    name = json['name'];
    ssn = json['ssn'];
    phone = json['phone'];
    workPhone = json['work_phone'];
    email = json['email'];
    specialty = json['specialty'];
    password = json['password'];
    workEmail = json['work_email'];
    jobDescription = json['job_description'];
    abstract = json['abstract'];
    fullBrief = json['full_brief'];
    jobId = json['job_id'];
    signature = json['signature'];
    birthDate = json['birth_date'];
    experienceYears = json['experience_years'];
    address = json['address'];
    salary = json['salary'];
    gender = json['gender'];
    nationality = json['nationality'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
    center = json['center'];
    department = json['department'];
    if (json['doctor_experiences'] != null) {
      doctorExperiences = [];
      json['doctor_experiences'].forEach((v) {
        doctorExperiences?.add(Dynamic.fromJson(v));
      });
    }
    if (json['work_times'] != null) {
      workTimes = [];
      json['work_times'].forEach((v) {
        workTimes?.add(Dynamic.fromJson(v));
      });
    }
    if (json['patients'] != null) {
      patients = [];
      json['patients'].forEach((v) {
        patients?.add(Dynamic.fromJson(v));
      });
    }
    if (json['booking_requests'] != null) {
      bookingRequests = [];
      json['booking_requests'].forEach((v) {
        bookingRequests?.add(Dynamic.fromJson(v));
      });
    }
    if (json['samples'] != null) {
      samples = [];
      json['samples'].forEach((v) {
        samples?.add(Dynamic.fromJson(v));
      });
    }
    if (json['reports'] != null) {
      reports = [];
      json['reports'].forEach((v) {
        reports?.add(Dynamic.fromJson(v));
      });
    }
    if (json['invoices'] != null) {
      invoices = [];
      json['invoices'].forEach((v) {
        invoices?.add(Dynamic.fromJson(v));
      });
    }
    if (json['rates'] != null) {
      rates = [];
      json['rates'].forEach((v) {
        rates?.add(Dynamic.fromJson(v));
      });
    }
    if (json['favorites'] != null) {
      favorites = [];
      json['favorites'].forEach((v) {
        favorites?.add(Dynamic.fromJson(v));
      });
    }
  }
  int? id;
  dynamic centerId;
  dynamic departmentId;
  String? imagePath;
  String? username;
  String? name;
  String? ssn;
  String? phone;
  String? workPhone;
  String? email;
  String? specialty;
  String? password;
  String? workEmail;
  String? jobDescription;
  String? abstract;
  String? fullBrief;
  int? jobId;
  dynamic signature;
  String? birthDate;
  int? experienceYears;
  String? address;
  int? salary;
  String? gender;
  String? nationality;
  String? createdAt;
  String? updatedAt;
  String? token;
  dynamic center;
  dynamic department;
  List<dynamic>? doctorExperiences;
  List<dynamic>? workTimes;
  List<dynamic>? patients;
  List<dynamic>? bookingRequests;
  List<dynamic>? samples;
  List<dynamic>? reports;
  List<dynamic>? invoices;
  List<dynamic>? rates;
  List<dynamic>? favorites;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['center_id'] = centerId;
    map['department_id'] = departmentId;
    map['image_path'] = imagePath;
    map['username'] = username;
    map['name'] = name;
    map['ssn'] = ssn;
    map['phone'] = phone;
    map['work_phone'] = workPhone;
    map['email'] = email;
    map['specialty'] = specialty;
    map['password'] = password;
    map['work_email'] = workEmail;
    map['job_description'] = jobDescription;
    map['abstract'] = abstract;
    map['full_brief'] = fullBrief;
    map['job_id'] = jobId;
    map['signature'] = signature;
    map['birth_date'] = birthDate;
    map['experience_years'] = experienceYears;
    map['address'] = address;
    map['salary'] = salary;
    map['gender'] = gender;
    map['nationality'] = nationality;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['token'] = token;
    map['center'] = center;
    map['department'] = department;
    if (doctorExperiences != null) {
      map['doctor_experiences'] = doctorExperiences?.map((v) => v.toJson()).toList();
    }
    if (workTimes != null) {
      map['work_times'] = workTimes?.map((v) => v.toJson()).toList();
    }
    if (patients != null) {
      map['patients'] = patients?.map((v) => v.toJson()).toList();
    }
    if (bookingRequests != null) {
      map['booking_requests'] = bookingRequests?.map((v) => v.toJson()).toList();
    }
    if (samples != null) {
      map['samples'] = samples?.map((v) => v.toJson()).toList();
    }
    if (reports != null) {
      map['reports'] = reports?.map((v) => v.toJson()).toList();
    }
    if (invoices != null) {
      map['invoices'] = invoices?.map((v) => v.toJson()).toList();
    }
    if (rates != null) {
      map['rates'] = rates?.map((v) => v.toJson()).toList();
    }
    if (favorites != null) {
      map['favorites'] = favorites?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Dynamic {
  static fromJson(v) {}
}