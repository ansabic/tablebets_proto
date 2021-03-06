import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/betting_slip/pick_list/pick_list.dart';
import 'package:tablebets_proto/betting_slip/tablebet_overview/tablebet_overview.dart';
import 'package:tablebets_proto/betting_slip/tablebet_placebet/tablebet_placebet.dart';
import 'package:tablebets_proto/dtos/match_box_data.dart';

import 'betting_slip_cubit.dart';

class BettingSlip extends StatelessWidget {
  const BettingSlip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          BettingSlipCubit(List.filled(10, MatchBoxData(homeTeam: "team1",
              awayTeam: "team2",
              leftScore: 0,
              rightScore: 0,
              status: "International Friendlies - Today, 20:15"))
          ),
      child: BlocBuilder<BettingSlipCubit, BettingSlipState>(
        builder: (context, state) {
          return Scaffold(
            body: PageView(
              children: [
                PickList(),
                TableBetOverview(),
                TableBetPlaceBet()
              ],
            ),
          );
        },
      ),
    );
  }

}