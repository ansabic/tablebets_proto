import 'package:flutter/cupertino.dart';
import 'package:tablebets_proto/custom/match_box/match_box.dart';

class PickList extends StatelessWidget {
  const PickList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MatchBox(),
            MatchBox(),
            MatchBox(),
            MatchBox(),
            MatchBox(),
            MatchBox(),
            MatchBox(),
            MatchBox(),
            MatchBox()
          ],
        ),
      ),
    );
  }

}