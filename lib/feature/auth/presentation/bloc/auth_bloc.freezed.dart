// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAuth,
    required TResult Function(LoginRequestModel model) login,
    required TResult Function(RegisterRequestModel model) register,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAuth,
    TResult? Function(LoginRequestModel model)? login,
    TResult? Function(RegisterRequestModel model)? register,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAuth,
    TResult Function(LoginRequestModel model)? login,
    TResult Function(RegisterRequestModel model)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAuth value) getAuth,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAuth value)? getAuth,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAuth value)? getAuth,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAuth,
    required TResult Function(LoginRequestModel model) login,
    required TResult Function(RegisterRequestModel model) register,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAuth,
    TResult? Function(LoginRequestModel model)? login,
    TResult? Function(RegisterRequestModel model)? register,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAuth,
    TResult Function(LoginRequestModel model)? login,
    TResult Function(RegisterRequestModel model)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAuth value) getAuth,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAuth value)? getAuth,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAuth value)? getAuth,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetAuthCopyWith<$Res> {
  factory _$$_GetAuthCopyWith(
          _$_GetAuth value, $Res Function(_$_GetAuth) then) =
      __$$_GetAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_GetAuth>
    implements _$$_GetAuthCopyWith<$Res> {
  __$$_GetAuthCopyWithImpl(_$_GetAuth _value, $Res Function(_$_GetAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAuth implements _GetAuth {
  const _$_GetAuth();

  @override
  String toString() {
    return 'AuthEvent.getAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAuth,
    required TResult Function(LoginRequestModel model) login,
    required TResult Function(RegisterRequestModel model) register,
    required TResult Function() logout,
  }) {
    return getAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAuth,
    TResult? Function(LoginRequestModel model)? login,
    TResult? Function(RegisterRequestModel model)? register,
    TResult? Function()? logout,
  }) {
    return getAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAuth,
    TResult Function(LoginRequestModel model)? login,
    TResult Function(RegisterRequestModel model)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getAuth != null) {
      return getAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAuth value) getAuth,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
  }) {
    return getAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAuth value)? getAuth,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
  }) {
    return getAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAuth value)? getAuth,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getAuth != null) {
      return getAuth(this);
    }
    return orElse();
  }
}

abstract class _GetAuth implements AuthEvent {
  const factory _GetAuth() = _$_GetAuth;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestModel model});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Login(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login(this.model);

  @override
  final LoginRequestModel model;

  @override
  String toString() {
    return 'AuthEvent.login(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAuth,
    required TResult Function(LoginRequestModel model) login,
    required TResult Function(RegisterRequestModel model) register,
    required TResult Function() logout,
  }) {
    return login(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAuth,
    TResult? Function(LoginRequestModel model)? login,
    TResult? Function(RegisterRequestModel model)? register,
    TResult? Function()? logout,
  }) {
    return login?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAuth,
    TResult Function(LoginRequestModel model)? login,
    TResult Function(RegisterRequestModel model)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAuth value) getAuth,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAuth value)? getAuth,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAuth value)? getAuth,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final LoginRequestModel model) = _$_Login;

  LoginRequestModel get model;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterRequestModel model});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Register(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(this.model);

  @override
  final RegisterRequestModel model;

  @override
  String toString() {
    return 'AuthEvent.register(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAuth,
    required TResult Function(LoginRequestModel model) login,
    required TResult Function(RegisterRequestModel model) register,
    required TResult Function() logout,
  }) {
    return register(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAuth,
    TResult? Function(LoginRequestModel model)? login,
    TResult? Function(RegisterRequestModel model)? register,
    TResult? Function()? logout,
  }) {
    return register?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAuth,
    TResult Function(LoginRequestModel model)? login,
    TResult Function(RegisterRequestModel model)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAuth value) getAuth,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAuth value)? getAuth,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAuth value)? getAuth,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final RegisterRequestModel model) = _$_Register;

  RegisterRequestModel get model;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAuth,
    required TResult Function(LoginRequestModel model) login,
    required TResult Function(RegisterRequestModel model) register,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAuth,
    TResult? Function(LoginRequestModel model)? login,
    TResult? Function(RegisterRequestModel model)? register,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAuth,
    TResult Function(LoginRequestModel model)? login,
    TResult Function(RegisterRequestModel model)? register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAuth value) getAuth,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAuth value)? getAuth,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAuth value)? getAuth,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel model) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel model)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StateInitialCopyWith<$Res> {
  factory _$$_StateInitialCopyWith(
          _$_StateInitial value, $Res Function(_$_StateInitial) then) =
      __$$_StateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_StateInitial>
    implements _$$_StateInitialCopyWith<$Res> {
  __$$_StateInitialCopyWithImpl(
      _$_StateInitial _value, $Res Function(_$_StateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateInitial implements _StateInitial {
  const _$_StateInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel model) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StateInitial implements AuthState {
  const factory _StateInitial() = _$_StateInitial;
}

/// @nodoc
abstract class _$$_StateLoadingCopyWith<$Res> {
  factory _$$_StateLoadingCopyWith(
          _$_StateLoading value, $Res Function(_$_StateLoading) then) =
      __$$_StateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_StateLoading>
    implements _$$_StateLoadingCopyWith<$Res> {
  __$$_StateLoadingCopyWithImpl(
      _$_StateLoading _value, $Res Function(_$_StateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateLoading implements _StateLoading {
  const _$_StateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel model) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading implements AuthState {
  const factory _StateLoading() = _$_StateLoading;
}

/// @nodoc
abstract class _$$_StateLoadedCopyWith<$Res> {
  factory _$$_StateLoadedCopyWith(
          _$_StateLoaded value, $Res Function(_$_StateLoaded) then) =
      __$$_StateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel model});
}

/// @nodoc
class __$$_StateLoadedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_StateLoaded>
    implements _$$_StateLoadedCopyWith<$Res> {
  __$$_StateLoadedCopyWithImpl(
      _$_StateLoaded _value, $Res Function(_$_StateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_StateLoaded(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$_StateLoaded implements _StateLoaded {
  const _$_StateLoaded(this.model);

  @override
  final AuthResponseModel model;

  @override
  String toString() {
    return 'AuthState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoaded &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      __$$_StateLoadedCopyWithImpl<_$_StateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel model) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StateLoaded implements AuthState {
  const factory _StateLoaded(final AuthResponseModel model) = _$_StateLoaded;

  AuthResponseModel get model;
  @JsonKey(ignore: true)
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateErrorCopyWith<$Res> {
  factory _$$_StateErrorCopyWith(
          _$_StateError value, $Res Function(_$_StateError) then) =
      __$$_StateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_StateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_StateError>
    implements _$$_StateErrorCopyWith<$Res> {
  __$$_StateErrorCopyWithImpl(
      _$_StateError _value, $Res Function(_$_StateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_StateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StateError implements _StateError {
  const _$_StateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      __$$_StateErrorCopyWithImpl<_$_StateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel model) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel model)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel model)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements AuthState {
  const factory _StateError(final String message) = _$_StateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      throw _privateConstructorUsedError;
}
