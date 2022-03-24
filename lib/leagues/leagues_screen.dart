import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/leagues/leagues_cubit.dart';

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
                children: [
                  Text("Leagues"),
                  Text("BundesLiga"),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
