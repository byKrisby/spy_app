// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntroductionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideIntroduction,
    required TResult Function() showIntroduction,
    required TResult Function() getIntroductionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideIntroduction,
    TResult? Function()? showIntroduction,
    TResult? Function()? getIntroductionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideIntroduction,
    TResult Function()? showIntroduction,
    TResult Function()? getIntroductionStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HideIntroduction value) hideIntroduction,
    required TResult Function(ShowIntroduction value) showIntroduction,
    required TResult Function(GetIntroductionStatus value)
        getIntroductionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HideIntroduction value)? hideIntroduction,
    TResult? Function(ShowIntroduction value)? showIntroduction,
    TResult? Function(GetIntroductionStatus value)? getIntroductionStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HideIntroduction value)? hideIntroduction,
    TResult Function(ShowIntroduction value)? showIntroduction,
    TResult Function(GetIntroductionStatus value)? getIntroductionStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionEventCopyWith<$Res> {
  factory $IntroductionEventCopyWith(
          IntroductionEvent value, $Res Function(IntroductionEvent) then) =
      _$IntroductionEventCopyWithImpl<$Res, IntroductionEvent>;
}

/// @nodoc
class _$IntroductionEventCopyWithImpl<$Res, $Val extends IntroductionEvent>
    implements $IntroductionEventCopyWith<$Res> {
  _$IntroductionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntroductionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HideIntroductionImplCopyWith<$Res> {
  factory _$$HideIntroductionImplCopyWith(_$HideIntroductionImpl value,
          $Res Function(_$HideIntroductionImpl) then) =
      __$$HideIntroductionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideIntroductionImplCopyWithImpl<$Res>
    extends _$IntroductionEventCopyWithImpl<$Res, _$HideIntroductionImpl>
    implements _$$HideIntroductionImplCopyWith<$Res> {
  __$$HideIntroductionImplCopyWithImpl(_$HideIntroductionImpl _value,
      $Res Function(_$HideIntroductionImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroductionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideIntroductionImpl implements HideIntroduction {
  const _$HideIntroductionImpl();

  @override
  String toString() {
    return 'IntroductionEvent.hideIntroduction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideIntroductionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideIntroduction,
    required TResult Function() showIntroduction,
    required TResult Function() getIntroductionStatus,
  }) {
    return hideIntroduction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideIntroduction,
    TResult? Function()? showIntroduction,
    TResult? Function()? getIntroductionStatus,
  }) {
    return hideIntroduction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideIntroduction,
    TResult Function()? showIntroduction,
    TResult Function()? getIntroductionStatus,
    required TResult orElse(),
  }) {
    if (hideIntroduction != null) {
      return hideIntroduction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HideIntroduction value) hideIntroduction,
    required TResult Function(ShowIntroduction value) showIntroduction,
    required TResult Function(GetIntroductionStatus value)
        getIntroductionStatus,
  }) {
    return hideIntroduction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HideIntroduction value)? hideIntroduction,
    TResult? Function(ShowIntroduction value)? showIntroduction,
    TResult? Function(GetIntroductionStatus value)? getIntroductionStatus,
  }) {
    return hideIntroduction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HideIntroduction value)? hideIntroduction,
    TResult Function(ShowIntroduction value)? showIntroduction,
    TResult Function(GetIntroductionStatus value)? getIntroductionStatus,
    required TResult orElse(),
  }) {
    if (hideIntroduction != null) {
      return hideIntroduction(this);
    }
    return orElse();
  }
}

abstract class HideIntroduction implements IntroductionEvent {
  const factory HideIntroduction() = _$HideIntroductionImpl;
}

/// @nodoc
abstract class _$$ShowIntroductionImplCopyWith<$Res> {
  factory _$$ShowIntroductionImplCopyWith(_$ShowIntroductionImpl value,
          $Res Function(_$ShowIntroductionImpl) then) =
      __$$ShowIntroductionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowIntroductionImplCopyWithImpl<$Res>
    extends _$IntroductionEventCopyWithImpl<$Res, _$ShowIntroductionImpl>
    implements _$$ShowIntroductionImplCopyWith<$Res> {
  __$$ShowIntroductionImplCopyWithImpl(_$ShowIntroductionImpl _value,
      $Res Function(_$ShowIntroductionImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroductionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowIntroductionImpl implements ShowIntroduction {
  const _$ShowIntroductionImpl();

  @override
  String toString() {
    return 'IntroductionEvent.showIntroduction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowIntroductionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideIntroduction,
    required TResult Function() showIntroduction,
    required TResult Function() getIntroductionStatus,
  }) {
    return showIntroduction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideIntroduction,
    TResult? Function()? showIntroduction,
    TResult? Function()? getIntroductionStatus,
  }) {
    return showIntroduction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideIntroduction,
    TResult Function()? showIntroduction,
    TResult Function()? getIntroductionStatus,
    required TResult orElse(),
  }) {
    if (showIntroduction != null) {
      return showIntroduction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HideIntroduction value) hideIntroduction,
    required TResult Function(ShowIntroduction value) showIntroduction,
    required TResult Function(GetIntroductionStatus value)
        getIntroductionStatus,
  }) {
    return showIntroduction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HideIntroduction value)? hideIntroduction,
    TResult? Function(ShowIntroduction value)? showIntroduction,
    TResult? Function(GetIntroductionStatus value)? getIntroductionStatus,
  }) {
    return showIntroduction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HideIntroduction value)? hideIntroduction,
    TResult Function(ShowIntroduction value)? showIntroduction,
    TResult Function(GetIntroductionStatus value)? getIntroductionStatus,
    required TResult orElse(),
  }) {
    if (showIntroduction != null) {
      return showIntroduction(this);
    }
    return orElse();
  }
}

abstract class ShowIntroduction implements IntroductionEvent {
  const factory ShowIntroduction() = _$ShowIntroductionImpl;
}

/// @nodoc
abstract class _$$GetIntroductionStatusImplCopyWith<$Res> {
  factory _$$GetIntroductionStatusImplCopyWith(
          _$GetIntroductionStatusImpl value,
          $Res Function(_$GetIntroductionStatusImpl) then) =
      __$$GetIntroductionStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIntroductionStatusImplCopyWithImpl<$Res>
    extends _$IntroductionEventCopyWithImpl<$Res, _$GetIntroductionStatusImpl>
    implements _$$GetIntroductionStatusImplCopyWith<$Res> {
  __$$GetIntroductionStatusImplCopyWithImpl(_$GetIntroductionStatusImpl _value,
      $Res Function(_$GetIntroductionStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroductionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetIntroductionStatusImpl implements GetIntroductionStatus {
  const _$GetIntroductionStatusImpl();

  @override
  String toString() {
    return 'IntroductionEvent.getIntroductionStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIntroductionStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hideIntroduction,
    required TResult Function() showIntroduction,
    required TResult Function() getIntroductionStatus,
  }) {
    return getIntroductionStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hideIntroduction,
    TResult? Function()? showIntroduction,
    TResult? Function()? getIntroductionStatus,
  }) {
    return getIntroductionStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hideIntroduction,
    TResult Function()? showIntroduction,
    TResult Function()? getIntroductionStatus,
    required TResult orElse(),
  }) {
    if (getIntroductionStatus != null) {
      return getIntroductionStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HideIntroduction value) hideIntroduction,
    required TResult Function(ShowIntroduction value) showIntroduction,
    required TResult Function(GetIntroductionStatus value)
        getIntroductionStatus,
  }) {
    return getIntroductionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HideIntroduction value)? hideIntroduction,
    TResult? Function(ShowIntroduction value)? showIntroduction,
    TResult? Function(GetIntroductionStatus value)? getIntroductionStatus,
  }) {
    return getIntroductionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HideIntroduction value)? hideIntroduction,
    TResult Function(ShowIntroduction value)? showIntroduction,
    TResult Function(GetIntroductionStatus value)? getIntroductionStatus,
    required TResult orElse(),
  }) {
    if (getIntroductionStatus != null) {
      return getIntroductionStatus(this);
    }
    return orElse();
  }
}

abstract class GetIntroductionStatus implements IntroductionEvent {
  const factory GetIntroductionStatus() = _$GetIntroductionStatusImpl;
}

/// @nodoc
mixin _$IntroductionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() introductionVisible,
    required TResult Function() introductionHidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? introductionVisible,
    TResult? Function()? introductionHidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? introductionVisible,
    TResult Function()? introductionHidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IntroductionVisible value) introductionVisible,
    required TResult Function(IntroductionHidden value) introductionHidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IntroductionVisible value)? introductionVisible,
    TResult? Function(IntroductionHidden value)? introductionHidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IntroductionVisible value)? introductionVisible,
    TResult Function(IntroductionHidden value)? introductionHidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionStateCopyWith<$Res> {
  factory $IntroductionStateCopyWith(
          IntroductionState value, $Res Function(IntroductionState) then) =
      _$IntroductionStateCopyWithImpl<$Res, IntroductionState>;
}

/// @nodoc
class _$IntroductionStateCopyWithImpl<$Res, $Val extends IntroductionState>
    implements $IntroductionStateCopyWith<$Res> {
  _$IntroductionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntroductionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$IntroductionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroductionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'IntroductionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() introductionVisible,
    required TResult Function() introductionHidden,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? introductionVisible,
    TResult? Function()? introductionHidden,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? introductionVisible,
    TResult Function()? introductionHidden,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(IntroductionVisible value) introductionVisible,
    required TResult Function(IntroductionHidden value) introductionHidden,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IntroductionVisible value)? introductionVisible,
    TResult? Function(IntroductionHidden value)? introductionHidden,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IntroductionVisible value)? introductionVisible,
    TResult Function(IntroductionHidden value)? introductionHidden,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IntroductionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$IntroductionVisibleImplCopyWith<$Res> {
  factory _$$IntroductionVisibleImplCopyWith(_$IntroductionVisibleImpl value,
          $Res Function(_$IntroductionVisibleImpl) then) =
      __$$IntroductionVisibleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntroductionVisibleImplCopyWithImpl<$Res>
    extends _$IntroductionStateCopyWithImpl<$Res, _$IntroductionVisibleImpl>
    implements _$$IntroductionVisibleImplCopyWith<$Res> {
  __$$IntroductionVisibleImplCopyWithImpl(_$IntroductionVisibleImpl _value,
      $Res Function(_$IntroductionVisibleImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroductionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IntroductionVisibleImpl implements IntroductionVisible {
  const _$IntroductionVisibleImpl();

  @override
  String toString() {
    return 'IntroductionState.introductionVisible()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntroductionVisibleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() introductionVisible,
    required TResult Function() introductionHidden,
  }) {
    return introductionVisible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? introductionVisible,
    TResult? Function()? introductionHidden,
  }) {
    return introductionVisible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? introductionVisible,
    TResult Function()? introductionHidden,
    required TResult orElse(),
  }) {
    if (introductionVisible != null) {
      return introductionVisible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IntroductionVisible value) introductionVisible,
    required TResult Function(IntroductionHidden value) introductionHidden,
  }) {
    return introductionVisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IntroductionVisible value)? introductionVisible,
    TResult? Function(IntroductionHidden value)? introductionHidden,
  }) {
    return introductionVisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IntroductionVisible value)? introductionVisible,
    TResult Function(IntroductionHidden value)? introductionHidden,
    required TResult orElse(),
  }) {
    if (introductionVisible != null) {
      return introductionVisible(this);
    }
    return orElse();
  }
}

abstract class IntroductionVisible implements IntroductionState {
  const factory IntroductionVisible() = _$IntroductionVisibleImpl;
}

/// @nodoc
abstract class _$$IntroductionHiddenImplCopyWith<$Res> {
  factory _$$IntroductionHiddenImplCopyWith(_$IntroductionHiddenImpl value,
          $Res Function(_$IntroductionHiddenImpl) then) =
      __$$IntroductionHiddenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntroductionHiddenImplCopyWithImpl<$Res>
    extends _$IntroductionStateCopyWithImpl<$Res, _$IntroductionHiddenImpl>
    implements _$$IntroductionHiddenImplCopyWith<$Res> {
  __$$IntroductionHiddenImplCopyWithImpl(_$IntroductionHiddenImpl _value,
      $Res Function(_$IntroductionHiddenImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroductionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IntroductionHiddenImpl implements IntroductionHidden {
  const _$IntroductionHiddenImpl();

  @override
  String toString() {
    return 'IntroductionState.introductionHidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntroductionHiddenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() introductionVisible,
    required TResult Function() introductionHidden,
  }) {
    return introductionHidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? introductionVisible,
    TResult? Function()? introductionHidden,
  }) {
    return introductionHidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? introductionVisible,
    TResult Function()? introductionHidden,
    required TResult orElse(),
  }) {
    if (introductionHidden != null) {
      return introductionHidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IntroductionVisible value) introductionVisible,
    required TResult Function(IntroductionHidden value) introductionHidden,
  }) {
    return introductionHidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IntroductionVisible value)? introductionVisible,
    TResult? Function(IntroductionHidden value)? introductionHidden,
  }) {
    return introductionHidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IntroductionVisible value)? introductionVisible,
    TResult Function(IntroductionHidden value)? introductionHidden,
    required TResult orElse(),
  }) {
    if (introductionHidden != null) {
      return introductionHidden(this);
    }
    return orElse();
  }
}

abstract class IntroductionHidden implements IntroductionState {
  const factory IntroductionHidden() = _$IntroductionHiddenImpl;
}
