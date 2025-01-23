import 'package:flutter/material.dart';
import 'package:money_transfer/electric.dart';
import 'package:money_transfer/profile_general.dart';
import 'package:money_transfer/statistic.dart';
import 'package:money_transfer/wallet_card.dart';
import 'package:sizer/sizer.dart';

import 'balance_profile.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  List screen = [
    const Electric(),
    const Statistic(),
    const WalletCard(),
    const ProfileGeneral(),
  ];
  int selectedScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: screen[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreen,
        selectedIconTheme: const IconThemeData(
          color: Color(0xffFB9089),
        ),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        onTap: (value) {
          selectedScreen = value;
          setState(() {});
        },
      ),
    );
  }
}
