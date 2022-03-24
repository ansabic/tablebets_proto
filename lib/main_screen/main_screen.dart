import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/leagues/leagues_screen.dart';
import 'package:tablebets_proto/main_screen/main_screen_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainScreenCubit(),
      child: BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                BlocProvider.of<MainScreenCubit>(context).changePosition(index);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LeaguesScreen()),
                );
              },
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              currentIndex: state.navigationPosition,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.leaderboard), label: "League"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list), label: "My bets"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: "Profile")
              ],
            ),
            body: const Center(
              child: Text("Ovo je initial stranica!"),
            ),
          );
        },
      ),
    );
  }

}