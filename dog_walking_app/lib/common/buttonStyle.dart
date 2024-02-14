import 'package:dog_walking_app/mapper/pageMapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';

// 버튼 레이아웃1 : 오렌지색 그라데이션 + bold + 흰 텍스트
Widget elevatedButtonStyleOrange(
  BuildContext context,
  String innerText,
  Pages? pages,
) {
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
      onPressed: () {
        if (null == pages) {
          return;
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      PageMapper.getPage(pages)));
        }
      },
      child: Text(
        innerText,
        style: textTheme.titleSmall,
      ),
    ),
  );
}

// 버튼 레이아웃2 : 작은버튼 / 오렌지색 그라데이션 + bold + 작고 흰 텍스트
Widget elevatedButtonStyleOrangeSmall(
  BuildContext context,
  String innerText,
  IconData? iconData,
  Pages? pages,
) {
  final TextTheme textTheme = Theme.of(context).copyWith().textTheme;

  return Container(
    width: 110.0,
    height: 41.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
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
                10.0,
              ),
            ),
          ),
          padding: const EdgeInsets.all(0.0)),
      onPressed: () {
        if (null == pages) {
          return;
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      PageMapper.getPage(pages)));
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              color: ColorConst.whiteColor,
              size: 17.0,
            ),
          if (iconData != null)
            const SizedBox(
              width: 6.0,
            ),
          Text(
            innerText,
            style: textTheme.bodyMedium!.copyWith(
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    ),
  );
}

// 버튼 레이아웃3 : 아이콘 + 텍스트 버튼
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
