import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/betting_slip/betting_slip.dart';
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
                switch(index) {
                  case 0:
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LeaguesScreen()),
                    );
                    break;
                  case 2:
                    showFlexibleBottomSheet(
                      builder: (context, scrollController, bottomSheetOffset) {
                        return BettingSlip();
                      }, context: context,
                      minHeight: 0,
                      initHeight: 1,
                      maxHeight: 1,
                      anchors: [0, 0.5, 1],
                    );
                    break;
                }
              },
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              currentIndex: state.navigationPosition,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.leaderboard), label: "League"),
                BottomNavigationBarItem(label: "Betting slip",icon: Icon(Icons.monetization_on, size: 35,)),
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