// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'housing_services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HousingServices _$$_HousingServicesFromJson(Map<String, dynamic> json) =>
    _$_HousingServices(
      availability: json['availability'] as String,
      bathrooms: json['bathrooms'] as String,
      bedrooms: json['bedrooms'] as String,
      capacity: json['capacity'] as String,
      distance_from_central: json['distance_from_central'] as String,
      id: json['id'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      price: json['price'] as String,
      size: json['size'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_HousingServicesToJson(_$_HousingServices instance) =>
    <String, dynamic>{
      'availability': instance.availability,
      'bathrooms': instance.bathrooms,
      'bedrooms': instance.bedrooms,
      'capacity': instance.capacity,
      'distance_from_central': instance.distance_from_central,
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'price': instance.price,
      'size': instance.size,
      'image': instance.image,
    };
