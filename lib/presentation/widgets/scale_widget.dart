// import 'dart:math';
import 'package:flutter/material.dart';

class ScaleWidget extends StatefulWidget {
  const ScaleWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<ScaleWidget> createState() => _ScaleWidgetState();
}

class _ScaleWidgetState extends State<ScaleWidget> {
  Color bgColor = Colors.yellow;
  bool makeCircular = false;
  double _scaleFactor = 0.5;
  double _baseScaleFactor = 0.5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        _baseScaleFactor = _scaleFactor;
      },
      onScaleUpdate: (details) {
        setState(() {
          _scaleFactor = _baseScaleFactor * details.scale;
        });
      },
      onScaleEnd: (details) {
        // return to initial scale
        _scaleFactor = _baseScaleFactor;
      },
      // onVerticalDragStart: (details) {
      //   debugPrint('onVerticalDragStart $details');
      // },
      // onVerticalDragDown: (details) {
      //   debugPrint('onVerticalDragDown $details');
      // },
      // onVerticalDragUpdate: (details) {
      //   debugPrint('onVerticalDragUpdate $details');
      // },
      // onVerticalDragEnd: (details) {
      //   debugPrint('onVerticalDragEnd $details');
      // },
      // onVerticalDragCancel: () {
      //   debugPrint('onVerticalDragCancel');
      // },
      // onHorizontalDragStart: (details) {
      //   debugPrint('onHorizontalDragStart $details');
      // },
      // onHorizontalDragDown: (details) {
      //   debugPrint('onHorizontalDragDown $details');
      // },
      // onHorizontalDragUpdate: (details) {
      //   debugPrint('onHorizontalDragUpdate $details');
      // },
      // onHorizontalDragEnd: (details) {
      //   debugPrint('onHorizontalDragEnd $details');
      // },
      // onHorizontalDragCancel: () {
      //   debugPrint('onHorizontalDragCancel');
      // },
      child: Transform.scale(
        scale: _scaleFactor,
        child: Card(
          shape: makeCircular
              ? const CircleBorder()
              : const RoundedRectangleBorder(),
          color: bgColor,
          child: const SizedBox(
            height: 200,
            width: 300,
          ),
        ),
      ),
    );
  }
}
