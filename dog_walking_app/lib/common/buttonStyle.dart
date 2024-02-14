import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';

// 버튼 레이아웃1 : 오렌지색 그라데이션 + bold + 흰 텍스트
Widget elevatedButtonStyleOrange(BuildContext context, String innerText) {
  final TextTheme textTheme = Theme.of(context).copyWith().textTheme;
  return Container(
    width: double.maxFinite,
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

// 버튼 레이아웃2 : 아이콘 + 텍스트 버튼
Widget elevatedButtonStyleIconText(
    BuildContext context, String innerText, Object icon, Color color) {
  final TextTheme textTheme = Theme.of(context).copyWith().textTheme;

  Border border = Border.all();
  if (color == ColorConst.baseColor) {
    border = Border.all(
      color: ColorConst.whiteColor,
    );
  }

  return Container(
    width: double.maxFinite,
    height: 60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14.0),
      color: color,
      border: border,
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
      child: Stack(
        children: [
          if (icon is Icon)
            icon
          else if (icon is Image)
            icon
          else if (icon is SvgPicture)
            icon,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                innerText,
                style: textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
