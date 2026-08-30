import 'package:flutter/material.dart';

import '../../style/myColor.dart';

class HomeScrTabs extends StatefulWidget {
  final String tabName;
  final bool isActive;
  final VoidCallback onTab;

  const HomeScrTabs({
    super.key,
    required this.tabName,
    required this.isActive,
    required this.onTab,
  });

  @override
  State<HomeScrTabs> createState() => _HomeScrTabsState();
}

class _HomeScrTabsState extends State<HomeScrTabs> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTab,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 40,
        decoration: BoxDecoration(
          color: widget.isActive ? MyColorLib.primary : MyColorLib.secondaryBg,
          borderRadius: BorderRadius.circular(9999),
        ),
        child: Center(
          child: Text(
            widget.tabName,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: widget.isActive ? MyColorLib.mainBg : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
