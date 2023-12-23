import 'dart:math';
import 'package:flutter/material.dart';

class DoubleTapWidget extends StatefulWidget {
  const DoubleTapWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<DoubleTapWidget> createState() => _DoubleTapWidgetState();
}

class _DoubleTapWidgetState extends State<DoubleTapWidget> {
  Color bgColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('onTap');
      },
      onTapUp: (details) {
        debugPrint('onTapUp $details');
      },
      onTapCancel: () {
        debugPrint('onTapCancel');
      },
      onTapDown: (details) {
        details.globalPosition.dx;
        debugPrint(
            'onTapDown x=${details.globalPosition.dx} y=${details.globalPosition.dy}');
      },
      onDoubleTap: () {
        debugPrint('onDoubleTap');
        setState(() {
          bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      onDoubleTapDown: (details) {
        debugPrint('onDoubleTapDown $details');
      },
      onDoubleTapCancel: () {
        debugPrint('onDoubleTapDown');
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
