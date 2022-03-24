import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/leagues/leagues_cubit.dart';

import 'header_filter/filter_screen.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LeaguesCubit(),
      child: BlocBuilder<LeaguesCubit, LeaguesState>(
          builder: (blocContext, state) {
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.blue),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Leagues", style: TextStyle(color: Colors.blue),),
                  Text("BundesLiga", style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:[
                  FilterScreen(name: "All",),
                  FilterScreen(name: "4 hours",),
                  FilterScreen(name: "8 hours",),
                  FilterScreen(name: "Today",),
                  FilterScreen(name: "To",),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
