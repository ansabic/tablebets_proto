import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.blue
            ),
            title: Row(
              children: [
                Text("Leagues"),
                Text("BundesLiga"),
              ],
            ),
          ),
        ),
    );
  }
}