// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobServices _$JobServicesFromJson(Map<String, dynamic> json) {
  return _JobServices.fromJson(json);
}

/// @nodoc
mixin _$JobServices {
  String get job_description => throw _privateConstructorUsedError;
  String get job_name => throw _privateConstructorUsedError;
  String get distance_from_central => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobServicesCopyWith<JobServices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobServicesCopyWith<$Res> {
  factory $JobServicesCopyWith(
          JobServices value, $Res Function(JobServices) then) =
      _$JobServicesCopyWithImpl<$Res, JobServices>;
  @useResult
  $Res call(
      {String job_description,
      String job_name,
      String distance_from_central,
      String id,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$JobServicesCopyWithImpl<$Res, $Val extends JobServices>
    implements $JobServicesCopyWith<$Res> {
  _$JobServicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job_description = null,
    Object? job_name = null,
    Object? distance_from_central = null,
    Object? id = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      job_description: null == job_description
          ? _value.job_description
          : job_description // ignore: cast_nullable_to_non_nullable
              as String,
      job_name: null == job_name
          ? _value.job_name
          : job_name // ignore: cast_nullable_to_non_nullable
              as String,
      distance_from_central: null == distance_from_central
          ? _value.distance_from_central
          : distance_from_central // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobServicesCopyWith<$Res>
    implements $JobServicesCopyWith<$Res> {
  factory _$$_JobServicesCopyWith(
          _$_JobServices value, $Res Function(_$_JobServices) then) =
      __$$_JobServicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String job_description,
      String job_name,
      String distance_from_central,
      String id,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$$_JobServicesCopyWithImpl<$Res>
    extends _$JobServicesCopyWithImpl<$Res, _$_JobServices>
    implements _$$_JobServicesCopyWith<$Res> {
  __$$_JobServicesCopyWithImpl(
      _$_JobServices _value, $Res Function(_$_JobServices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? job_description = null,
    Object? job_name = null,
    Object? distance_from_central = null,
    Object? id = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_JobServices(
      job_description: null == job_description
          ? _value.job_description
          : job_description // ignore: cast_nullable_to_non_nullable
              as String,
      job_name: null == job_name
          ? _value.job_name
          : job_name // ignore: cast_nullable_to_non_nullable
              as String,
      distance_from_central: null == distance_from_central
          ? _value.distance_from_central
          : distance_from_central // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobServices implements _JobServices {
  _$_JobServices(
      {required this.job_description,
      required this.job_name,
      required this.distance_from_central,
      required this.id,
      this.latitude,
      this.longitude});

  factory _$_JobServices.fromJson(Map<String, dynamic> json) =>
      _$$_JobServicesFromJson(json);

  @override
  final String job_description;
  @override
  final String job_name;
  @override
  final String distance_from_central;
  @override
  final String id;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'JobServices(job_description: $job_description, job_name: $job_name, distance_from_central: $distance_from_central, id: $id, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobServices &&
            (identical(other.job_description, job_description) ||
                other.job_description == job_description) &&
            (identical(other.job_name, job_name) ||
                other.job_name == job_name) &&
            (identical(other.distance_from_central, distance_from_central) ||
                other.distance_from_central == distance_from_central) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, job_description, job_name,
      distance_from_central, id, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobServicesCopyWith<_$_JobServices> get copyWith =>
      __$$_JobServicesCopyWithImpl<_$_JobServices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobServicesToJson(
      this,
    );
  }
}

abstract class _JobServices implements JobServices {
  factory _JobServices(
      {required final String job_description,
      required final String job_name,
      required final String distance_from_central,
      required final String id,
      final String? latitude,
      final String? longitude}) = _$_JobServices;

  factory _JobServices.fromJson(Map<String, dynamic> json) =
      _$_JobServices.fromJson;

  @override
  String get job_description;
  @override
  String get job_name;
  @override
  String get distance_from_central;
  @override
  String get id;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_JobServicesCopyWith<_$_JobServices> get copyWith =>
      throw _privateConstructorUsedError;
}
