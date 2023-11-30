// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
mixin _$Joke {
  String get joke => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res, Joke>;
  @useResult
  $Res call({String joke});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res, $Val extends Joke>
    implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
  }) {
    return _then(_value.copyWith(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JokeImplCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$$JokeImplCopyWith(
          _$JokeImpl value, $Res Function(_$JokeImpl) then) =
      __$$JokeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String joke});
}

/// @nodoc
class __$$JokeImplCopyWithImpl<$Res>
    extends _$JokeCopyWithImpl<$Res, _$JokeImpl>
    implements _$$JokeImplCopyWith<$Res> {
  __$$JokeImplCopyWithImpl(_$JokeImpl _value, $Res Function(_$JokeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
  }) {
    return _then(_$JokeImpl(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JokeImpl implements _Joke {
  _$JokeImpl({required this.joke});

  factory _$JokeImpl.fromJson(Map<String, dynamic> json) =>
      _$$JokeImplFromJson(json);

  @override
  final String joke;

  @override
  String toString() {
    return 'Joke(joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JokeImpl &&
            (identical(other.joke, joke) || other.joke == joke));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, joke);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JokeImplCopyWith<_$JokeImpl> get copyWith =>
      __$$JokeImplCopyWithImpl<_$JokeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JokeImplToJson(
      this,
    );
  }
}

abstract class _Joke implements Joke {
  factory _Joke({required final String joke}) = _$JokeImpl;

  factory _Joke.fromJson(Map<String, dynamic> json) = _$JokeImpl.fromJson;

  @override
  String get joke;
  @override
  @JsonKey(ignore: true)
  _$$JokeImplCopyWith<_$JokeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
