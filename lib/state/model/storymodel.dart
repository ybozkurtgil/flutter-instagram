import 'package:freezed_annotation/freezed_annotation.dart';

part 'storymodel.freezed.dart';
part 'storymodel.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _Person;
  factory Person.fromJson(Map<String,Object?>json) =>
  _$PersonFromJson(json);

}

