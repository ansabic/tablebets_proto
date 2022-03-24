import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tablebets_proto/betting_slip/tablebet_overview/overview_item/overview_item.dart';

import '../betting_slip_cubit.dart';

class TableBetOverview extends StatelessWidget {
  const TableBetOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "R",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "PT",
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: BlocProvider.of<BettingSlipCubit>(context).state.bettingSlipData.length * 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return OverviewItem(
                    data: BlocProvider.of<BettingSlipCubit>(context).state.bettingSlipData[
                        index % BlocProvider.of<BettingSlipCubit>(context).state.bettingSlipData.length],
                    index: index, length: BlocProvider.of<BettingSlipCubit>(context).state.bettingSlipData.length,);
              },
            ),
          )
        ],
      ),
    );
  }
}
