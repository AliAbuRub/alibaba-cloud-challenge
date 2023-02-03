// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      car: json['car'] as String,
      city: json['city'] as String,
      company_coords: json['company_coords'] as String,
      country: json['country'] as String,
      courses: Map<String, num>.from(json['courses'] as Map),
      degree: json['degree'] as String,
      date_of_birth: json['date_of_birth'] as String,
      family_members: json['family_members'] as String,
      field_of_study: json['field_of_study'] as String,
      graduation_year: json['graduation_year'] as String,
      health_history: json['health_history'] as String,
      house: json['house'] as String,
      id: json['id'] as String,
      intersts: Map<String, num>.from(json['intersts'] as Map),
      job: json['job'] as String,
      name: json['name'] as String,
      university: json['university'] as String,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'car': instance.car,
      'city': instance.city,
      'company_coords': instance.company_coords,
      'country': instance.country,
      'courses': instance.courses,
      'degree': instance.degree,
      'date_of_birth': instance.date_of_birth,
      'family_members': instance.family_members,
      'field_of_study': instance.field_of_study,
      'graduation_year': instance.graduation_year,
      'health_history': instance.health_history,
      'house': instance.house,
      'id': instance.id,
      'intersts': instance.intersts,
      'job': instance.job,
      'name': instance.name,
      'university': instance.university,
    };
