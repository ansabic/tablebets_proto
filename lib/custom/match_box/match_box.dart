import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/betting_slip/betting_slip_cubit.dart';
import 'package:tablebets_proto/dtos/match_box_data.dart';


class MatchBox extends StatelessWidget {
  final MatchBoxData data;
  final int index;

  const MatchBox({Key? key, required this.data, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color leftDownColor, rightDownColor;
    if (data.leftScore == 0) {
      leftDownColor = Colors.grey.shade300;
    } else {
      leftDownColor = Colors.black;
    }
    if (data.rightScore == 0) {
      rightDownColor = Colors.grey.shade300;
    } else {
      rightDownColor = Colors.black;
    }
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(Icons.flag, color: Colors.red),
                ),
                Expanded(child: Text(data.status))
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Image.asset("assets/football-shirt.png"),
                      ),
                      Text(data.homeTeam)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<BettingSlipCubit>(context).addLeftTeamValue(index);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(Icons.keyboard_arrow_up_sharp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(data.leftScore.toString()),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (data.leftScore > 0) {
                          BlocProvider.of<BettingSlipCubit>(context).subtractLeftTeamValue(index);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: leftDownColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(":"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<BettingSlipCubit>(context).addRightTeamValue(index);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(Icons.keyboard_arrow_up_sharp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(data.rightScore.toString()),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (data.rightScore > 0) {
                          BlocProvider.of<BettingSlipCubit>(context).subtractRightTeamValue(index);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: rightDownColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Image.asset("assets/football-shirt.png"),
                      ),
                      Text(data.awayTeam)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
