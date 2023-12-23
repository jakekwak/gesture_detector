// import 'dart:math';
import 'package:flutter/material.dart';

class LongPressWidget extends StatefulWidget {
  const LongPressWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<LongPressWidget> createState() => _LongPressWidgetState();
}

class _LongPressWidgetState extends State<LongPressWidget> {
  Color bgColor = Colors.yellow;
  bool makeCircular = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        debugPrint('onLongPress');
        setState(() {
          makeCircular = !makeCircular;
        });
      },
      onLongPressDown: (details) {
        debugPrint('onLongPressDown $details');
      },
      onLongPressStart: (details) {
        debugPrint('onLongPressStart $details');
      },
      onLongPressMoveUpdate: (details) {
        debugPrint('onLongPressMoveUpdate $details');
      },
      onLongPressEnd: (details) {
        debugPrint('onLongPressEnd $details');
      },
      onLongPressUp: () {
        debugPrint('onLongPressUp');
      },
      onLongPressCancel: () {
        debugPrint('onLongPressECancel');
      },
      child: Card(
        shape: makeCircular
            ? const CircleBorder()
            : const RoundedRectangleBorder(),
        color: bgColor,
        child: const SizedBox(
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
