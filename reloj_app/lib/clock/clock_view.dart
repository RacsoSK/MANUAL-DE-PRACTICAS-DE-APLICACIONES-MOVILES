import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reloj_app/clock/analogic_circle.dart';
import 'package:reloj_app/clock/second_pointer.dart';

import 'hour_pointer.dart';
import 'minute_pointer.dart';

class ClockView extends StatelessWidget {
  const ClockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        Duration(seconds: 1),
      ),
      builder: (context, snapshot) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  AnalogicCircle(),
                  SecondPointer(),
                  MinutePointer(),
                  HourPointer(),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    DateFormat('hh:mm:ss a').format(DateTime.now()),
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Color.fromARGB(255, 19, 19, 19)),
                  ),
                ],
              ),
              Text(
                DateFormat.yMMMMEEEEd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Color.fromARGB(255, 134, 134, 134)),
              ),
            ],
          ),
        );
      },
    );
  }
}