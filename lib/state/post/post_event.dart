part of 'post_bloc.dart';

@immutable
abstract class PostEvent {
  const PostEvent();
}

class GetPosts extends PostEvent {
  const GetPosts();
}

class PostFinished extends PostEvent{
final String? message;
final List<Person>? storymodels;
const PostFinished({
this.message,
this.storymodels,
});


}
