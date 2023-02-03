import 'dart:convert';

import 'package:flutter/foundation.dart';

/* 

{
"car": "Ferrari",
"city": "Markberg",
"company_coords": " [15.731208991548051, 54.12221928781784]",
"country": "Cayman Islands",
"courses": {
"art": 63,
"engineering": 39,
"math": 85,
"pe": 18,
"science": 36
},
"date_of_birth": "1934-01-30",
"degree": "Bachelor",
"family_members": "6",
"field_of_study": "Medicine",
"graduation_year": "2016",
"health_history": "Sick",
"house": "RV",
"id": "398-19-6732",
"intersts": {
"architecture": 44,
"art": 37,
"books": 70,
"business": 29,
"cars": 53,
"cooking": 68,
"design": 35,
"education": 52,
"engineering": 88,
"fashion": 60,
"finance": 22,
"fitness": 41,
"food": 12,
"gaming": 27,
"health": 41,
"history": 70,
"law": 23,
"math": 19,
"medicine": 38,
"movies": 12,
"music": 58,
"nature": 39,
"pets": 98,
"pharmacy": 14,
"politics": 95,
"psychology": 55,
"religion": 70,
"science": 91,
"space": 62,
"sports": 10,
"technology": 100,
"travel": 93
},
"job": "Architectural and Civil Drafters",
"name": "Nathan Reyes",
"university": "University College London"
}
*/
class UserModel {
  final String car;
  final String city;
  final String company_coords;
  final String country;
  final Map<String, num> courses;
  final String date_of_birth;
  final String family_members;
  final String field_of_study;
  final String graduation_year;
  final String health_history;
  final String house;
  final String id;
  final Map<String, num> intersts;
  final String job;
  final String name;
  final String university;
  UserModel({
    required this.car,
    required this.city,
    required this.company_coords,
    required this.country,
    required this.courses,
    required this.date_of_birth,
    required this.family_members,
    required this.field_of_study,
    required this.graduation_year,
    required this.health_history,
    required this.house,
    required this.id,
    required this.intersts,
    required this.job,
    required this.name,
    required this.university,
  });

  UserModel copyWith({
    String? car,
    String? city,
    String? company_coords,
    String? country,
    Map<String, num>? courses,
    String? date_of_birth,
    String? family_members,
    String? field_of_study,
    String? graduation_year,
    String? health_history,
    String? house,
    String? id,
    Map<String, num>? intersts,
    String? job,
    String? name,
    String? university,
  }) {
    return UserModel(
      car: car ?? this.car,
      city: city ?? this.city,
      company_coords: company_coords ?? this.company_coords,
      country: country ?? this.country,
      courses: courses ?? this.courses,
      date_of_birth: date_of_birth ?? this.date_of_birth,
      family_members: family_members ?? this.family_members,
      field_of_study: field_of_study ?? this.field_of_study,
      graduation_year: graduation_year ?? this.graduation_year,
      health_history: health_history ?? this.health_history,
      house: house ?? this.house,
      id: id ?? this.id,
      intersts: intersts ?? this.intersts,
      job: job ?? this.job,
      name: name ?? this.name,
      university: university ?? this.university,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'car': car,
      'city': city,
      'company_coords': company_coords,
      'country': country,
      'courses': courses,
      'date_of_birth': date_of_birth,
      'family_members': family_members,
      'field_of_study': field_of_study,
      'graduation_year': graduation_year,
      'health_history': health_history,
      'house': house,
      'id': id,
      'intersts': intersts,
      'job': job,
      'name': name,
      'university': university,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      car: map['car'] ?? '',
      city: map['city'] ?? '',
      company_coords: map['company_coords'] ?? '',
      country: map['country'] ?? '',
      courses: Map<String, num>.from(map['courses']),
      date_of_birth: map['date_of_birth'] ?? '',
      family_members: map['family_members'] ?? '',
      field_of_study: map['field_of_study'] ?? '',
      graduation_year: map['graduation_year'] ?? '',
      health_history: map['health_history'] ?? '',
      house: map['house'] ?? '',
      id: map['id'] ?? '',
      intersts: Map<String, num>.from(map['intersts']),
      job: map['job'] ?? '',
      name: map['name'] ?? '',
      university: map['university'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(car: $car, city: $city, company_coords: $company_coords, country: $country, courses: $courses, date_of_birth: $date_of_birth, family_members: $family_members, field_of_study: $field_of_study, graduation_year: $graduation_year, health_history: $health_history, house: $house, id: $id, intersts: $intersts, job: $job, name: $name, university: $university)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.car == car &&
      other.city == city &&
      other.company_coords == company_coords &&
      other.country == country &&
      mapEquals(other.courses, courses) &&
      other.date_of_birth == date_of_birth &&
      other.family_members == family_members &&
      other.field_of_study == field_of_study &&
      other.graduation_year == graduation_year &&
      other.health_history == health_history &&
      other.house == house &&
      other.id == id &&
      mapEquals(other.intersts, intersts) &&
      other.job == job &&
      other.name == name &&
      other.university == university;
  }

  @override
  int get hashCode {
    return car.hashCode ^
      city.hashCode ^
      company_coords.hashCode ^
      country.hashCode ^
      courses.hashCode ^
      date_of_birth.hashCode ^
      family_members.hashCode ^
      field_of_study.hashCode ^
      graduation_year.hashCode ^
      health_history.hashCode ^
      house.hashCode ^
      id.hashCode ^
      intersts.hashCode ^
      job.hashCode ^
      name.hashCode ^
      university.hashCode;
  }
}
