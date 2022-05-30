import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_app_cubit.freezed.dart';

class BaseAppCubit extends Cubit {
  BaseAppCubit() : super(const BaseAppState());
}

@freezed
abstract class BaseAppState with _$BaseAppState {
  const factory BaseAppState({
    @Default(true) bool isLoading,
    Failure? error,
    String? userType,
    dynamic data,
  }) = _BaseAppState;
}
