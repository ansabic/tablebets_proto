import 'package:flutter/material.dart';
import 'package:tablebets_proto/dtos/match_box_data.dart';

class OverviewItem extends StatelessWidget {
  final MatchBoxData data;
  final int index;
  final int length;
  const OverviewItem({Key? key, required this.data, required this.index, required this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String resultLeft, resultRight;
    int pointsLeft, pointsRight;
    if(data.leftScore == data.rightScore) {
      resultLeft = data.leftScore.toString() + ":" + data.rightScore.toString();
      resultRight = resultLeft;
      pointsLeft = 1;
      pointsRight = 1;
    }
    else {
      resultLeft = data.leftScore.toString() + ":0";
      resultRight = "0:" + data.rightScore.toString();
      if(data.leftScore > data.rightScore) {
        pointsLeft = 3;
        pointsRight = 0;
      }
      else {
        pointsLeft = 0;
        pointsRight = 3;
      }
    }
    if(index < length) {
      return Row(
        children: [
          Expanded(
              flex: 1,
              child: Text((index + 1).toString() + ".", style: TextStyle(color: Colors.green),)),
          Expanded(flex: 6,child: Text(data.homeTeam)),
          Expanded(child: Text(resultLeft)),
          Expanded(child: Text(pointsLeft.toString()))
        ],
      );
    }
    else {
     return Row(
        children: [
          Expanded(
              flex: 1,
              child: Text((index + 1).toString() + ".", style: TextStyle(color: Colors.green),)),
          Expanded(flex: 6,child: Text(data.awayTeam)),
          Expanded(child: Text(resultRight)),
          Expanded(child: Text(pointsRight.toString()))
        ],
      );
    }

  }

}