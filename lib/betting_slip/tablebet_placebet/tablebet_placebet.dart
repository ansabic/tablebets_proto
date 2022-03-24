import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TableBetPlaceBet extends StatelessWidget {
  const TableBetPlaceBet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Table Bet",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 15,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("Odd",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                Text("Stake",
                  style: TextStyle(fontSize: 12, color: Colors.grey),)
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          )
        ],
      ),

    );
  }

}