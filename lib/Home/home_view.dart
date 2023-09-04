import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/messenger/messenger_view.dart';
import 'package:instagram/state/post/post_bloc.dart';
import 'package:instagram/widgets/post_item.dart';

import '../widgets/story_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 120,
            child: Container(
              color: Colors.black,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    ""),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(
                                    'Hikayeniz',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ),
                        ]),
                      ),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return StoryItem();
                        },
                        itemCount: 12,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              print(state);
              if(state is PostError) {
                print(state.model);
              }

              if(state is PostSuccess) {
                return ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return PostItem(storymodel: state.models[index],);
                  },
                );
              }

              return SizedBox();
            },
          ),

        ],
        ),

     ),
    );
  }
}
