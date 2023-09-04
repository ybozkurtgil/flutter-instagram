part of 'post_bloc.dart';

@immutable
abstract class PostState {
  const PostState();
}

class PostInitial extends PostState {}
class InProgress extends PostState{}
class PostSuccess extends PostState{
  final List<Person> models;

  const PostSuccess({required this.models});
}
class PostError extends PostState{
  final String? model;
  const PostError({this.model});
}