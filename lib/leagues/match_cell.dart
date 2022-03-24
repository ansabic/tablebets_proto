import 'package:flutter/material.dart';
import 'package:tablebets_proto/leagues/DataSource.dart';

class MatchCell extends StatelessWidget {
  final Matches team;
  const MatchCell({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [Text(team.homeTeam ?? "")]),
              Row(children: [Text(team.awayTeam ?? "")]),
              Row(children: [
                Image.asset(
                  'assets/tipster.png',
                  height: 23,
                )
              ])
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(children: [
              IconButton(
                  onPressed: () {},
                  iconSize: 28,
                  icon: Image.asset('assets/image.png'))
            ]),
            Row(children: [Text('${team.odds?[0].title}:${team.odds?[0].value}    ${team.odds?[1].title}:${team.odds?[1].value}    ${team.odds?[2].title}:${team.odds?[2].value}')]),
          ],
        ),
        // Divider(color: Colors.black,),
      ],
    );
  }
}
