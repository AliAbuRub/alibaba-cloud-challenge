import 'package:freezed_annotation/freezed_annotation.dart';

part 'housing_services.freezed.dart';
part 'housing_services.g.dart';

@freezed
class HousingServices with _$HousingServices {
  factory HousingServices({
    required String availability,
    required String bathrooms,
    required String bedrooms,
    required String capacity,
    required String distance_from_central,
    required String id,
    double? latitude,
    double? longitude,
    required String price,
    required String size,
    String? image,
  }) = _HousingServices;

  factory HousingServices.fromJson(Map<String, dynamic> json) =>
      _$HousingServicesFromJson(json);
}
