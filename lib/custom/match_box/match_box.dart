import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'match_box_cubit.dart';

class MatchBox extends StatelessWidget {
  const MatchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MatchBoxCubit(),
      child: BlocBuilder<MatchBoxCubit, MatchBoxState>(
        builder: (context, state) {
          Color leftDownColor, rightDownColor;
          if(state.leftTeamValue == 0) {
            leftDownColor = Colors.grey.shade300;
          }
          else {
            leftDownColor = Colors.black;
          }
          if(state.rightTeamValue == 0) {
            rightDownColor = Colors.grey.shade300;
          }
          else {
            rightDownColor = Colors.black;
          }
          return Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(Icons.flag, color: Colors.red),
                      ),
                      Expanded(
                          child: Text(
                              "International Friendlies - Today, 20:15"))
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
                            const Text("Dummy team")
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
                              BlocProvider.of<MatchBoxCubit>(context).addLeftTeamValue();
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Icon(Icons.keyboard_arrow_up_sharp),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(state.leftTeamValue.toString()),
                          ),
                          GestureDetector(
                            onTap: () {
                              if(state.leftTeamValue > 0) {
                                BlocProvider.of<MatchBoxCubit>(context).subtractLeftTeamValue();
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Icon(Icons.keyboard_arrow_down_sharp, color: leftDownColor,),
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
                              BlocProvider.of<MatchBoxCubit>(context).addRightTeamValue();
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Icon(Icons.keyboard_arrow_up_sharp),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(state.rightTeamValue.toString()),
                          ),
                          GestureDetector(
                            onTap: () {
                              if(state.rightTeamValue > 0) {
                                BlocProvider.of<MatchBoxCubit>(context).subtractRightTeamValue();
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Icon(Icons.keyboard_arrow_down_sharp, color: rightDownColor,),
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
                            const Text("Dummy team 2")
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

}