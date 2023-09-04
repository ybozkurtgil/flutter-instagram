import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/state/bottom_nav_bar_cubit.dart';
import 'package:instagram/state/post/post_bloc.dart';
import '../bottom-navigation/bottom_navigation.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => PostBloc(),

      ),
    ], child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => BottomNavBarCubit(),
        child: BottomNavigationBarView(),
      ),
    ));
  }
}
