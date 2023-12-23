// import 'dart:math';
import 'package:flutter/material.dart';

class HorizontalDragWidget extends StatefulWidget {
  const HorizontalDragWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<HorizontalDragWidget> createState() => _HorizontalDragWidgetState();
}

class _HorizontalDragWidgetState extends State<HorizontalDragWidget> {
  Color bgColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (details) {
        debugPrint('onVerticalDragStart $details');
      },
      onVerticalDragDown: (details) {
        debugPrint('onVerticalDragDown $details');
      },
      onVerticalDragUpdate: (details) {
        debugPrint('onVerticalDragUpdate $details');
      },
      onVerticalDragEnd: (details) {
        debugPrint('onVerticalDragEnd $details');
      },
      onVerticalDragCancel: () {
        debugPrint('onVerticalDragCancel');
      },
      onHorizontalDragStart: (details) {
        debugPrint('onHorizontalDragStart $details');
      },
      onHorizontalDragDown: (details) {
        debugPrint('onHorizontalDragDown $details');
      },
      onHorizontalDragUpdate: (details) {
        debugPrint('onHorizontalDragUpdate $details');
      },
      onHorizontalDragEnd: (details) {
        debugPrint('onHorizontalDragEnd $details');
      },
      onHorizontalDragCancel: () {
        debugPrint('onHorizontalDragCancel');
      },
      child: Card(
        color: bgColor,
        child: const SizedBox(
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
