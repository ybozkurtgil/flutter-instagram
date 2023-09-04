import 'dart:async';
import 'dart:convert';


import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:instagram/state/model/storymodel.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<GetPosts>(onGetPosts);
    on<PostFinished>(onPostFinished);

    getPosts();
  }

  var http = Client();

  void getPosts() async {
    print("kjrhfkrf");
    Uri url = Uri.https("jsonplaceholder.typicode.com", "posts");
    add(const GetPosts());

    try {
      var response = await http.get(url);
      var json = jsonDecode(utf8.decode(response.bodyBytes)) as List;
      List<Person>storyModels = json.map((model) => Person.fromJson(model))
          .toList();

      add(PostFinished(storymodels: storyModels));
    }
    catch (e) {
      add(PostFinished(message: e.toString()));
    }
  }

  void onGetPosts(PostEvent event,
      Emitter<PostState> emit,) async {
    emit(InProgress());
  }

  void onPostFinished(PostFinished event,
      Emitter<PostState> emit,) {
    if (event.storymodels != null) {
      emit(PostSuccess(models: event.storymodels!));
    }
    else {
        emit(PostError(model: event.message));
      }
  }
}




