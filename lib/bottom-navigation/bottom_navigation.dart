import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Home/home_view.dart';
import 'package:instagram/state/bottom_nav_bar_cubit.dart';

import '../messenger/messenger_view.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({super.key});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Instagram'),
            actions: [
              IconButton(
                  onPressed: () {
                    print('Beğeniler');
                  },
                  icon: Icon(Icons.heart_broken)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MessengerView(),
                    ));
                  },
                  icon: Icon(Icons.messenger_outline_rounded))
            ]),
        body: IndexedStack(
            index: context.watch<BottomNavBarCubit>().state.CurrentIndex,
            children: [
              HomeView(),
              Text('sayfa 2'),
              Text('sayfa 3'),
              Text('sayfa 4'),
              Text('sayfa 5')
            ]),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 16,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
            selectedIconTheme: IconThemeData(
              size: 40,
            ),
            currentIndex: context.watch<BottomNavBarCubit>().state.CurrentIndex,
            onTap: BlocProvider.of<BottomNavBarCubit>(context).onPressed,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'keşfet', icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: 'oluştur', icon: Icon(Icons.add_box_rounded)),
              BottomNavigationBarItem(
                  label: 'reels', icon: Icon(Icons.set_meal_outlined)),
              BottomNavigationBarItem(
                  label: 'profil', icon: Icon(Icons.person)),
            ]),
      ),
    );
  }
}
