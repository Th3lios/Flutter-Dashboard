import 'package:dashboard_app/widgets/side_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VetHomeScreen extends StatefulWidget {
  const VetHomeScreen({Key? key}) : super(key: key);

  static const id = 'vet_home_screen';

  @override
  State<VetHomeScreen> createState() => _VetHomeScreen();
}

class _VetHomeScreen extends State<VetHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          SideBar(),
        ],
      ),
    );
  }
}
