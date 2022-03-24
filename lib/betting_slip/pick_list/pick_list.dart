import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/custom/match_box/match_box.dart';
import 'package:tablebets_proto/dtos/match_box_data.dart';

import '../betting_slip_cubit.dart';

class PickList extends StatelessWidget {
  const PickList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MatchBoxData> data = BlocProvider.of<BettingSlipCubit>(context).state.bettingSlipData;
    return Center(
      child: ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder:  (context, index) {
          return MatchBox(data: data[index], index: index);
      },),
    );
  }

}