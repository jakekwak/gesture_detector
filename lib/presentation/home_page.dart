import 'package:flutter/material.dart';
import 'package:gesture_detector/presentation/widgets/horizontal_drag.dart';
import 'package:gesture_detector/presentation/widgets/longpress_widget.dart';
import 'package:gesture_detector/presentation/widgets/scale_widget.dart';
import 'widgets/doubletap_widget.dart';

import 'widgets/tap_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DoubleTap'),
            DoubleTapWidget(),
            Text('LongPress'),
            LongPressWidget(),
            Text('Scale'),
            ScaleWidget(),
            Text('Vertical & Horizontal'),
            HorizontalDragWidget(),
            Text('Tap'),
            MyFavoriteIconWidget(),
          ],
        ),
      ),
    );
  }
}
