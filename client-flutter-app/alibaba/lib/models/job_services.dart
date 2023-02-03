import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_services.freezed.dart';
part 'job_services.g.dart';

@freezed
class JobServices with _$JobServices {
  factory JobServices({
    required String job_description,
    required String job_name,
    required String distance_from_central,
    required String id,
    String? latitude,
    String? longitude,
  }) = _JobServices;

  factory JobServices.fromJson(Map<String, dynamic> json) =>
      _$JobServicesFromJson(json);
}
