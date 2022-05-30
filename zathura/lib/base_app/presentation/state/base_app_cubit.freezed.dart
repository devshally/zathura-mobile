// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseAppState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseAppStateCopyWith<BaseAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseAppStateCopyWith<$Res> {
  factory $BaseAppStateCopyWith(
          BaseAppState value, $Res Function(BaseAppState) then) =
      _$BaseAppStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Failure? error, String? userType, dynamic data});
}

/// @nodoc
class _$BaseAppStateCopyWithImpl<$Res> implements $BaseAppStateCopyWith<$Res> {
  _$BaseAppStateCopyWithImpl(this._value, this._then);

  final BaseAppState _value;
  // ignore: unused_field
  final $Res Function(BaseAppState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? userType = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseAppStateCopyWith<$Res>
    implements $BaseAppStateCopyWith<$Res> {
  factory _$$_BaseAppStateCopyWith(
          _$_BaseAppState value, $Res Function(_$_BaseAppState) then) =
      __$$_BaseAppStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Failure? error, String? userType, dynamic data});
}

/// @nodoc
class __$$_BaseAppStateCopyWithImpl<$Res>
    extends _$BaseAppStateCopyWithImpl<$Res>
    implements _$$_BaseAppStateCopyWith<$Res> {
  __$$_BaseAppStateCopyWithImpl(
      _$_BaseAppState _value, $Res Function(_$_BaseAppState) _then)
      : super(_value, (v) => _then(v as _$_BaseAppState));

  @override
  _$_BaseAppState get _value => super._value as _$_BaseAppState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? userType = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BaseAppState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_BaseAppState implements _BaseAppState {
  const _$_BaseAppState(
      {this.isLoading = true, this.error, this.userType, this.data});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? error;
  @override
  final String? userType;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'BaseAppState(isLoading: $isLoading, error: $error, userType: $userType, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseAppState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_BaseAppStateCopyWith<_$_BaseAppState> get copyWith =>
      __$$_BaseAppStateCopyWithImpl<_$_BaseAppState>(this, _$identity);
}

abstract class _BaseAppState implements BaseAppState {
  const factory _BaseAppState(
      {final bool isLoading,
      final Failure? error,
      final String? userType,
      final dynamic data}) = _$_BaseAppState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  String? get userType => throw _privateConstructorUsedError;
  @override
  dynamic get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BaseAppStateCopyWith<_$_BaseAppState> get copyWith =>
      throw _privateConstructorUsedError;
}
