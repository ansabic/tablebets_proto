import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  final String name;
  const FilterScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("implement with listView builder");
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 55,
          height: 40,
          child: Text(
              name,
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}