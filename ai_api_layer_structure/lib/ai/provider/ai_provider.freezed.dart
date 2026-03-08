// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AIRequest {

 String get prompt; String get model; int get maxTokens; double get temperature; String? get systemPrompt; List<AIMessage> get history; Map<String, dynamic>? get metadata;
/// Create a copy of AIRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIRequestCopyWith<AIRequest> get copyWith => _$AIRequestCopyWithImpl<AIRequest>(this as AIRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIRequest&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.model, model) || other.model == model)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.systemPrompt, systemPrompt) || other.systemPrompt == systemPrompt)&&const DeepCollectionEquality().equals(other.history, history)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}


@override
int get hashCode => Object.hash(runtimeType,prompt,model,maxTokens,temperature,systemPrompt,const DeepCollectionEquality().hash(history),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'AIRequest(prompt: $prompt, model: $model, maxTokens: $maxTokens, temperature: $temperature, systemPrompt: $systemPrompt, history: $history, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $AIRequestCopyWith<$Res>  {
  factory $AIRequestCopyWith(AIRequest value, $Res Function(AIRequest) _then) = _$AIRequestCopyWithImpl;
@useResult
$Res call({
 String prompt, String model, int maxTokens, double temperature, String? systemPrompt, List<AIMessage> history, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$AIRequestCopyWithImpl<$Res>
    implements $AIRequestCopyWith<$Res> {
  _$AIRequestCopyWithImpl(this._self, this._then);

  final AIRequest _self;
  final $Res Function(AIRequest) _then;

/// Create a copy of AIRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prompt = null,Object? model = null,Object? maxTokens = null,Object? temperature = null,Object? systemPrompt = freezed,Object? history = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,systemPrompt: freezed == systemPrompt ? _self.systemPrompt : systemPrompt // ignore: cast_nullable_to_non_nullable
as String?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<AIMessage>,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AIRequest].
extension AIRequestPatterns on AIRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIRequest value)  $default,){
final _that = this;
switch (_that) {
case _AIRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AIRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String prompt,  String model,  int maxTokens,  double temperature,  String? systemPrompt,  List<AIMessage> history,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIRequest() when $default != null:
return $default(_that.prompt,_that.model,_that.maxTokens,_that.temperature,_that.systemPrompt,_that.history,_that.metadata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String prompt,  String model,  int maxTokens,  double temperature,  String? systemPrompt,  List<AIMessage> history,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _AIRequest():
return $default(_that.prompt,_that.model,_that.maxTokens,_that.temperature,_that.systemPrompt,_that.history,_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String prompt,  String model,  int maxTokens,  double temperature,  String? systemPrompt,  List<AIMessage> history,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _AIRequest() when $default != null:
return $default(_that.prompt,_that.model,_that.maxTokens,_that.temperature,_that.systemPrompt,_that.history,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _AIRequest implements AIRequest {
  const _AIRequest({required this.prompt, required this.model, this.maxTokens = 1024, this.temperature = 0.7, this.systemPrompt, final  List<AIMessage> history = const [], final  Map<String, dynamic>? metadata}): _history = history,_metadata = metadata;
  

@override final  String prompt;
@override final  String model;
@override@JsonKey() final  int maxTokens;
@override@JsonKey() final  double temperature;
@override final  String? systemPrompt;
 final  List<AIMessage> _history;
@override@JsonKey() List<AIMessage> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AIRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIRequestCopyWith<_AIRequest> get copyWith => __$AIRequestCopyWithImpl<_AIRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIRequest&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.model, model) || other.model == model)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.systemPrompt, systemPrompt) || other.systemPrompt == systemPrompt)&&const DeepCollectionEquality().equals(other._history, _history)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}


@override
int get hashCode => Object.hash(runtimeType,prompt,model,maxTokens,temperature,systemPrompt,const DeepCollectionEquality().hash(_history),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'AIRequest(prompt: $prompt, model: $model, maxTokens: $maxTokens, temperature: $temperature, systemPrompt: $systemPrompt, history: $history, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$AIRequestCopyWith<$Res> implements $AIRequestCopyWith<$Res> {
  factory _$AIRequestCopyWith(_AIRequest value, $Res Function(_AIRequest) _then) = __$AIRequestCopyWithImpl;
@override @useResult
$Res call({
 String prompt, String model, int maxTokens, double temperature, String? systemPrompt, List<AIMessage> history, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$AIRequestCopyWithImpl<$Res>
    implements _$AIRequestCopyWith<$Res> {
  __$AIRequestCopyWithImpl(this._self, this._then);

  final _AIRequest _self;
  final $Res Function(_AIRequest) _then;

/// Create a copy of AIRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prompt = null,Object? model = null,Object? maxTokens = null,Object? temperature = null,Object? systemPrompt = freezed,Object? history = null,Object? metadata = freezed,}) {
  return _then(_AIRequest(
prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,systemPrompt: freezed == systemPrompt ? _self.systemPrompt : systemPrompt // ignore: cast_nullable_to_non_nullable
as String?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<AIMessage>,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
mixin _$AIResponse {

 String get content; String get model; AITokenUsage get tokenUsage; Duration get latency; Map<String, dynamic>? get raw;
/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIResponseCopyWith<AIResponse> get copyWith => _$AIResponseCopyWithImpl<AIResponse>(this as AIResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIResponse&&(identical(other.content, content) || other.content == content)&&(identical(other.model, model) || other.model == model)&&(identical(other.tokenUsage, tokenUsage) || other.tokenUsage == tokenUsage)&&(identical(other.latency, latency) || other.latency == latency)&&const DeepCollectionEquality().equals(other.raw, raw));
}


@override
int get hashCode => Object.hash(runtimeType,content,model,tokenUsage,latency,const DeepCollectionEquality().hash(raw));

@override
String toString() {
  return 'AIResponse(content: $content, model: $model, tokenUsage: $tokenUsage, latency: $latency, raw: $raw)';
}


}

/// @nodoc
abstract mixin class $AIResponseCopyWith<$Res>  {
  factory $AIResponseCopyWith(AIResponse value, $Res Function(AIResponse) _then) = _$AIResponseCopyWithImpl;
@useResult
$Res call({
 String content, String model, AITokenUsage tokenUsage, Duration latency, Map<String, dynamic>? raw
});


$AITokenUsageCopyWith<$Res> get tokenUsage;

}
/// @nodoc
class _$AIResponseCopyWithImpl<$Res>
    implements $AIResponseCopyWith<$Res> {
  _$AIResponseCopyWithImpl(this._self, this._then);

  final AIResponse _self;
  final $Res Function(AIResponse) _then;

/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? model = null,Object? tokenUsage = null,Object? latency = null,Object? raw = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,tokenUsage: null == tokenUsage ? _self.tokenUsage : tokenUsage // ignore: cast_nullable_to_non_nullable
as AITokenUsage,latency: null == latency ? _self.latency : latency // ignore: cast_nullable_to_non_nullable
as Duration,raw: freezed == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AITokenUsageCopyWith<$Res> get tokenUsage {
  
  return $AITokenUsageCopyWith<$Res>(_self.tokenUsage, (value) {
    return _then(_self.copyWith(tokenUsage: value));
  });
}
}


/// Adds pattern-matching-related methods to [AIResponse].
extension AIResponsePatterns on AIResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIResponse value)  $default,){
final _that = this;
switch (_that) {
case _AIResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  String model,  AITokenUsage tokenUsage,  Duration latency,  Map<String, dynamic>? raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that.content,_that.model,_that.tokenUsage,_that.latency,_that.raw);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  String model,  AITokenUsage tokenUsage,  Duration latency,  Map<String, dynamic>? raw)  $default,) {final _that = this;
switch (_that) {
case _AIResponse():
return $default(_that.content,_that.model,_that.tokenUsage,_that.latency,_that.raw);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  String model,  AITokenUsage tokenUsage,  Duration latency,  Map<String, dynamic>? raw)?  $default,) {final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that.content,_that.model,_that.tokenUsage,_that.latency,_that.raw);case _:
  return null;

}
}

}

/// @nodoc


class _AIResponse implements AIResponse {
  const _AIResponse({required this.content, required this.model, required this.tokenUsage, required this.latency, final  Map<String, dynamic>? raw}): _raw = raw;
  

@override final  String content;
@override final  String model;
@override final  AITokenUsage tokenUsage;
@override final  Duration latency;
 final  Map<String, dynamic>? _raw;
@override Map<String, dynamic>? get raw {
  final value = _raw;
  if (value == null) return null;
  if (_raw is EqualUnmodifiableMapView) return _raw;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIResponseCopyWith<_AIResponse> get copyWith => __$AIResponseCopyWithImpl<_AIResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIResponse&&(identical(other.content, content) || other.content == content)&&(identical(other.model, model) || other.model == model)&&(identical(other.tokenUsage, tokenUsage) || other.tokenUsage == tokenUsage)&&(identical(other.latency, latency) || other.latency == latency)&&const DeepCollectionEquality().equals(other._raw, _raw));
}


@override
int get hashCode => Object.hash(runtimeType,content,model,tokenUsage,latency,const DeepCollectionEquality().hash(_raw));

@override
String toString() {
  return 'AIResponse(content: $content, model: $model, tokenUsage: $tokenUsage, latency: $latency, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$AIResponseCopyWith<$Res> implements $AIResponseCopyWith<$Res> {
  factory _$AIResponseCopyWith(_AIResponse value, $Res Function(_AIResponse) _then) = __$AIResponseCopyWithImpl;
@override @useResult
$Res call({
 String content, String model, AITokenUsage tokenUsage, Duration latency, Map<String, dynamic>? raw
});


@override $AITokenUsageCopyWith<$Res> get tokenUsage;

}
/// @nodoc
class __$AIResponseCopyWithImpl<$Res>
    implements _$AIResponseCopyWith<$Res> {
  __$AIResponseCopyWithImpl(this._self, this._then);

  final _AIResponse _self;
  final $Res Function(_AIResponse) _then;

/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? model = null,Object? tokenUsage = null,Object? latency = null,Object? raw = freezed,}) {
  return _then(_AIResponse(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,tokenUsage: null == tokenUsage ? _self.tokenUsage : tokenUsage // ignore: cast_nullable_to_non_nullable
as AITokenUsage,latency: null == latency ? _self.latency : latency // ignore: cast_nullable_to_non_nullable
as Duration,raw: freezed == raw ? _self._raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AITokenUsageCopyWith<$Res> get tokenUsage {
  
  return $AITokenUsageCopyWith<$Res>(_self.tokenUsage, (value) {
    return _then(_self.copyWith(tokenUsage: value));
  });
}
}

/// @nodoc
mixin _$AITokenUsage {

 int get promptTokens; int get completionTokens; int get totalTokens;
/// Create a copy of AITokenUsage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AITokenUsageCopyWith<AITokenUsage> get copyWith => _$AITokenUsageCopyWithImpl<AITokenUsage>(this as AITokenUsage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AITokenUsage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens));
}


@override
int get hashCode => Object.hash(runtimeType,promptTokens,completionTokens,totalTokens);

@override
String toString() {
  return 'AITokenUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
}


}

/// @nodoc
abstract mixin class $AITokenUsageCopyWith<$Res>  {
  factory $AITokenUsageCopyWith(AITokenUsage value, $Res Function(AITokenUsage) _then) = _$AITokenUsageCopyWithImpl;
@useResult
$Res call({
 int promptTokens, int completionTokens, int totalTokens
});




}
/// @nodoc
class _$AITokenUsageCopyWithImpl<$Res>
    implements $AITokenUsageCopyWith<$Res> {
  _$AITokenUsageCopyWithImpl(this._self, this._then);

  final AITokenUsage _self;
  final $Res Function(AITokenUsage) _then;

/// Create a copy of AITokenUsage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,}) {
  return _then(_self.copyWith(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AITokenUsage].
extension AITokenUsagePatterns on AITokenUsage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AITokenUsage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AITokenUsage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AITokenUsage value)  $default,){
final _that = this;
switch (_that) {
case _AITokenUsage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AITokenUsage value)?  $default,){
final _that = this;
switch (_that) {
case _AITokenUsage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int promptTokens,  int completionTokens,  int totalTokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AITokenUsage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int promptTokens,  int completionTokens,  int totalTokens)  $default,) {final _that = this;
switch (_that) {
case _AITokenUsage():
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int promptTokens,  int completionTokens,  int totalTokens)?  $default,) {final _that = this;
switch (_that) {
case _AITokenUsage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens);case _:
  return null;

}
}

}

/// @nodoc


class _AITokenUsage implements AITokenUsage {
  const _AITokenUsage({required this.promptTokens, required this.completionTokens, required this.totalTokens});
  

@override final  int promptTokens;
@override final  int completionTokens;
@override final  int totalTokens;

/// Create a copy of AITokenUsage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AITokenUsageCopyWith<_AITokenUsage> get copyWith => __$AITokenUsageCopyWithImpl<_AITokenUsage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AITokenUsage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens));
}


@override
int get hashCode => Object.hash(runtimeType,promptTokens,completionTokens,totalTokens);

@override
String toString() {
  return 'AITokenUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
}


}

/// @nodoc
abstract mixin class _$AITokenUsageCopyWith<$Res> implements $AITokenUsageCopyWith<$Res> {
  factory _$AITokenUsageCopyWith(_AITokenUsage value, $Res Function(_AITokenUsage) _then) = __$AITokenUsageCopyWithImpl;
@override @useResult
$Res call({
 int promptTokens, int completionTokens, int totalTokens
});




}
/// @nodoc
class __$AITokenUsageCopyWithImpl<$Res>
    implements _$AITokenUsageCopyWith<$Res> {
  __$AITokenUsageCopyWithImpl(this._self, this._then);

  final _AITokenUsage _self;
  final $Res Function(_AITokenUsage) _then;

/// Create a copy of AITokenUsage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,}) {
  return _then(_AITokenUsage(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AIResponseChunk {

 String get delta; bool get isComplete; AITokenUsage? get finalUsage;
/// Create a copy of AIResponseChunk
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIResponseChunkCopyWith<AIResponseChunk> get copyWith => _$AIResponseChunkCopyWithImpl<AIResponseChunk>(this as AIResponseChunk, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIResponseChunk&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.isComplete, isComplete) || other.isComplete == isComplete)&&(identical(other.finalUsage, finalUsage) || other.finalUsage == finalUsage));
}


@override
int get hashCode => Object.hash(runtimeType,delta,isComplete,finalUsage);

@override
String toString() {
  return 'AIResponseChunk(delta: $delta, isComplete: $isComplete, finalUsage: $finalUsage)';
}


}

/// @nodoc
abstract mixin class $AIResponseChunkCopyWith<$Res>  {
  factory $AIResponseChunkCopyWith(AIResponseChunk value, $Res Function(AIResponseChunk) _then) = _$AIResponseChunkCopyWithImpl;
@useResult
$Res call({
 String delta, bool isComplete, AITokenUsage? finalUsage
});


$AITokenUsageCopyWith<$Res>? get finalUsage;

}
/// @nodoc
class _$AIResponseChunkCopyWithImpl<$Res>
    implements $AIResponseChunkCopyWith<$Res> {
  _$AIResponseChunkCopyWithImpl(this._self, this._then);

  final AIResponseChunk _self;
  final $Res Function(AIResponseChunk) _then;

/// Create a copy of AIResponseChunk
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? delta = null,Object? isComplete = null,Object? finalUsage = freezed,}) {
  return _then(_self.copyWith(
delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as String,isComplete: null == isComplete ? _self.isComplete : isComplete // ignore: cast_nullable_to_non_nullable
as bool,finalUsage: freezed == finalUsage ? _self.finalUsage : finalUsage // ignore: cast_nullable_to_non_nullable
as AITokenUsage?,
  ));
}
/// Create a copy of AIResponseChunk
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AITokenUsageCopyWith<$Res>? get finalUsage {
    if (_self.finalUsage == null) {
    return null;
  }

  return $AITokenUsageCopyWith<$Res>(_self.finalUsage!, (value) {
    return _then(_self.copyWith(finalUsage: value));
  });
}
}


/// Adds pattern-matching-related methods to [AIResponseChunk].
extension AIResponseChunkPatterns on AIResponseChunk {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIResponseChunk value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIResponseChunk() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIResponseChunk value)  $default,){
final _that = this;
switch (_that) {
case _AIResponseChunk():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIResponseChunk value)?  $default,){
final _that = this;
switch (_that) {
case _AIResponseChunk() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String delta,  bool isComplete,  AITokenUsage? finalUsage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIResponseChunk() when $default != null:
return $default(_that.delta,_that.isComplete,_that.finalUsage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String delta,  bool isComplete,  AITokenUsage? finalUsage)  $default,) {final _that = this;
switch (_that) {
case _AIResponseChunk():
return $default(_that.delta,_that.isComplete,_that.finalUsage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String delta,  bool isComplete,  AITokenUsage? finalUsage)?  $default,) {final _that = this;
switch (_that) {
case _AIResponseChunk() when $default != null:
return $default(_that.delta,_that.isComplete,_that.finalUsage);case _:
  return null;

}
}

}

/// @nodoc


class _AIResponseChunk implements AIResponseChunk {
  const _AIResponseChunk({required this.delta, required this.isComplete, this.finalUsage});
  

@override final  String delta;
@override final  bool isComplete;
@override final  AITokenUsage? finalUsage;

/// Create a copy of AIResponseChunk
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIResponseChunkCopyWith<_AIResponseChunk> get copyWith => __$AIResponseChunkCopyWithImpl<_AIResponseChunk>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIResponseChunk&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.isComplete, isComplete) || other.isComplete == isComplete)&&(identical(other.finalUsage, finalUsage) || other.finalUsage == finalUsage));
}


@override
int get hashCode => Object.hash(runtimeType,delta,isComplete,finalUsage);

@override
String toString() {
  return 'AIResponseChunk(delta: $delta, isComplete: $isComplete, finalUsage: $finalUsage)';
}


}

/// @nodoc
abstract mixin class _$AIResponseChunkCopyWith<$Res> implements $AIResponseChunkCopyWith<$Res> {
  factory _$AIResponseChunkCopyWith(_AIResponseChunk value, $Res Function(_AIResponseChunk) _then) = __$AIResponseChunkCopyWithImpl;
@override @useResult
$Res call({
 String delta, bool isComplete, AITokenUsage? finalUsage
});


@override $AITokenUsageCopyWith<$Res>? get finalUsage;

}
/// @nodoc
class __$AIResponseChunkCopyWithImpl<$Res>
    implements _$AIResponseChunkCopyWith<$Res> {
  __$AIResponseChunkCopyWithImpl(this._self, this._then);

  final _AIResponseChunk _self;
  final $Res Function(_AIResponseChunk) _then;

/// Create a copy of AIResponseChunk
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? delta = null,Object? isComplete = null,Object? finalUsage = freezed,}) {
  return _then(_AIResponseChunk(
delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as String,isComplete: null == isComplete ? _self.isComplete : isComplete // ignore: cast_nullable_to_non_nullable
as bool,finalUsage: freezed == finalUsage ? _self.finalUsage : finalUsage // ignore: cast_nullable_to_non_nullable
as AITokenUsage?,
  ));
}

/// Create a copy of AIResponseChunk
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AITokenUsageCopyWith<$Res>? get finalUsage {
    if (_self.finalUsage == null) {
    return null;
  }

  return $AITokenUsageCopyWith<$Res>(_self.finalUsage!, (value) {
    return _then(_self.copyWith(finalUsage: value));
  });
}
}

/// @nodoc
mixin _$AIMessage {

 AIRole get role; String get content;
/// Create a copy of AIMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIMessageCopyWith<AIMessage> get copyWith => _$AIMessageCopyWithImpl<AIMessage>(this as AIMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString() {
  return 'AIMessage(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class $AIMessageCopyWith<$Res>  {
  factory $AIMessageCopyWith(AIMessage value, $Res Function(AIMessage) _then) = _$AIMessageCopyWithImpl;
@useResult
$Res call({
 AIRole role, String content
});




}
/// @nodoc
class _$AIMessageCopyWithImpl<$Res>
    implements $AIMessageCopyWith<$Res> {
  _$AIMessageCopyWithImpl(this._self, this._then);

  final AIMessage _self;
  final $Res Function(AIMessage) _then;

/// Create a copy of AIMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AIRole,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AIMessage].
extension AIMessagePatterns on AIMessage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIMessage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIMessage value)  $default,){
final _that = this;
switch (_that) {
case _AIMessage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIMessage value)?  $default,){
final _that = this;
switch (_that) {
case _AIMessage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AIRole role,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIMessage() when $default != null:
return $default(_that.role,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AIRole role,  String content)  $default,) {final _that = this;
switch (_that) {
case _AIMessage():
return $default(_that.role,_that.content);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AIRole role,  String content)?  $default,) {final _that = this;
switch (_that) {
case _AIMessage() when $default != null:
return $default(_that.role,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class _AIMessage implements AIMessage {
  const _AIMessage({required this.role, required this.content});
  

@override final  AIRole role;
@override final  String content;

/// Create a copy of AIMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIMessageCopyWith<_AIMessage> get copyWith => __$AIMessageCopyWithImpl<_AIMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,role,content);

@override
String toString() {
  return 'AIMessage(role: $role, content: $content)';
}


}

/// @nodoc
abstract mixin class _$AIMessageCopyWith<$Res> implements $AIMessageCopyWith<$Res> {
  factory _$AIMessageCopyWith(_AIMessage value, $Res Function(_AIMessage) _then) = __$AIMessageCopyWithImpl;
@override @useResult
$Res call({
 AIRole role, String content
});




}
/// @nodoc
class __$AIMessageCopyWithImpl<$Res>
    implements _$AIMessageCopyWith<$Res> {
  __$AIMessageCopyWithImpl(this._self, this._then);

  final _AIMessage _self;
  final $Res Function(_AIMessage) _then;

/// Create a copy of AIMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,}) {
  return _then(_AIMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AIRole,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
