import 'package:flutter/material.dart';

class MatchCell extends StatelessWidget {
  const MatchCell({Key? key}) : super(key: key);

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
              Row(children: [Text('Leipzig')]),
              Row(children: [Text('Hertha')]),
              Row(children: [
                Image.asset(
                  'assets/tipster.png',
                  height: 23,
                )
              ])
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                IconButton(
                    onPressed: () {},
                    iconSize: 28,
                    icon: Image.asset('assets/image.png'))
              ]),
              Row(children: [Text('1: 2.5    X: 2.5    2: 2.5')]),
            ],
          ),
        ),
      ],
    );
  }
}
