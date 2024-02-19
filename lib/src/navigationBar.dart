import 'package:flutter/material.dart';

class AwesomeNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<String> sheetNames;

  const AwesomeNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.sheetNames,
  }) : super(key: key);

  @override
  _AwesomeNavigationBarState createState() => _AwesomeNavigationBarState();
}

class _AwesomeNavigationBarState extends State<AwesomeNavigationBar> {
  late double iconSize;

  final List<String> mainIconPaths = [
    "assets/home/ic_home.png",
    "assets/home/ic_template.png",
    "assets/home/ic_resume.png",
    "assets/home/ic_saved.png",
  ];

  final List<String> changedIconPaths = [
    "assets/home/ic_homeAct.gif",
    "assets/home/ic_templateAct.gif",
    "assets/home/ic_resumeAct.gif",
    "assets/home/ic_savedAct.gif",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    iconSize = 24;
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: BottomNavigationBarTheme(
        data: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.black),
        ),
        child: BottomNavigationBar(
          currentIndex: widget.currentIndex,
          onTap: widget.onTap,
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          unselectedItemColor: Colors.blueGrey,
          unselectedLabelStyle:
              const TextStyle(fontSize: 10, color: Colors.blueGrey),
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          items: [
            for (int i = 0; i < 4; i++)
              buildBottomNavBarItem(
                  icon: mainIconPaths[i],
                  label: widget.sheetNames[i],
                  gifPath: changedIconPaths[i]),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavBarItem(
      {required String icon, required String label, required String gifPath}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        height: iconSize,
        width: iconSize,
      ),
      label: label,
      activeIcon: Image.asset(
        gifPath,
        height: iconSize,
        width: iconSize,
      ),
    );
  }
}
