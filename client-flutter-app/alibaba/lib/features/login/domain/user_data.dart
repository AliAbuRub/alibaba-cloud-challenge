import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required String car,
    required String city,
    required String company_coords,
    required String country,
    required Map<String, num> courses,
    required String degree,
    required String date_of_birth,
    required String family_members,
    required String field_of_study,
    required String graduation_year,
    required String health_history,
    required String house,
    required String id,
    required Map<String, num> intersts,
    required String job,
    required String name,
    required String university,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
