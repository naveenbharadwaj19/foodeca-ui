// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodeca_ui/theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  Color selectedColor(BuildContext context) => Theme.of(context).primaryColor;
  Color unSelectedColor = const Color(0xff626365);

  void updateIdx(int idx) {
    setState(() {
      index = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        decoration: BoxDecoration(
          color: CustomColors.black,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(width: 2.0, color: Colors.transparent),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: IconButton(
                icon: Icon(
                  Icons.home_filled,
                  size: 25,
                  color: index == 0 ? selectedColor(context) : unSelectedColor,
                ),
                onPressed: () => updateIdx(0),
              ),
            ),
            InkWell(
                child: Ink(
                  child: SvgPicture.asset(
                    "assets/svgs/bag.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    color:
                        index == 1 ? selectedColor(context) : unSelectedColor,
                  ),
                ),
                onTap: () => updateIdx(1)),
            InkWell(
                child: Ink(
                  child: SvgPicture.asset(
                    "assets/svgs/bell.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    color:
                        index == 2 ? selectedColor(context) : unSelectedColor,
                  ),
                ),
                onTap: () => updateIdx(2)),
            InkWell(
                child: Ink(
                  child: SvgPicture.asset(
                    "assets/svgs/setting.svg",
                    height: 35,
                    width: 35,
                    fit: BoxFit.contain,
                    color:
                        index == 3 ? selectedColor(context) : unSelectedColor,
                  ),
                ),
                onTap: () => updateIdx(3)),
          ],
        ),
      ),
    );
  }
}
