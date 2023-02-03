// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobServices _$$_JobServicesFromJson(Map<String, dynamic> json) =>
    _$_JobServices(
      job_description: json['job_description'] as String,
      job_name: json['job_name'] as String,
      distance_from_central: json['distance_from_central'] as String,
      id: json['id'] as String,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$_JobServicesToJson(_$_JobServices instance) =>
    <String, dynamic>{
      'job_description': instance.job_description,
      'job_name': instance.job_name,
      'distance_from_central': instance.distance_from_central,
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
