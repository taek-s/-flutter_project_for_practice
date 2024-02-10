import 'package:flutter/material.dart';

import 'colors.dart';

// 버튼 레이아웃
Widget buttonStyle(BuildContext context, String innerText) {
  final TextTheme textTheme = Theme.of(context).copyWith().textTheme;
  return Container(
    width: 325.0,
    height: 60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14.0),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          ColorConst.gradentsColorLeft,
          ColorConst.gradentsColorRight,
        ],
      ),
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              14.0,
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        innerText,
        style: textTheme.titleSmall,
      ),
    ),
  );
}
