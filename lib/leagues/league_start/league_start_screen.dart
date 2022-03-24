import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'leagues_start_cubit.dart';

class LeagueStartScreen extends StatelessWidget {
  LeagueStartScreen({Key? key}) : super(key: key);

  var items = List<CountedItem>.filled(5, CountedItem("1", "UEFA Championship league", "12", "assets/league1.png"));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LeaguesStartCubit(),
      child: BlocBuilder<LeaguesStartCubit, LeaguesStartState>(
          builder: (blocContext, state) {
        return Scaffold(
          appBar: AppBar(),
          body: CountedItemsList(items),
        );
      }),
    );
  }
}

class CountedItemsList extends StatelessWidget {
  final List<CountedItem> items;

  const CountedItemsList(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(flex: 1, child: Image.asset(items[index].itemIcon)),
              Text(
                items[index].itemTitle,
                overflow: TextOverflow.ellipsis,
              ),
              Flexible(flex: 1, child: Text(items[index].itemCount)),
              const Flexible(flex: 1, child: Icon(Icons.arrow_right_alt_sharp))
            ],
          );
        },
        separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
            ),
        itemCount: items.length);
  }
}

class CountedItem {
  String itemId;
  String itemTitle;
  String itemCount;
  String itemIcon;

  CountedItem(this.itemId, this.itemTitle, this.itemCount, this.itemIcon);
}
