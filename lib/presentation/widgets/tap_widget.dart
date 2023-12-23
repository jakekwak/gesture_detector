import 'package:flutter/material.dart';

class MyFavoriteIconWidget extends StatefulWidget {
  const MyFavoriteIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFavoriteIconWidget> createState() => _MyFavoriteIconWidgetState();
}

class _MyFavoriteIconWidgetState extends State<MyFavoriteIconWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          debugPrint('onTap');
          setState(() {
            isSelected = !isSelected;
          });
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
        child: Icon(
          isSelected ? Icons.favorite : Icons.favorite_border,
          size: 40,
          color: isSelected ? Colors.red : Colors.black,
        ));
  }
}
