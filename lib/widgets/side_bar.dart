import 'package:dashboard_app/models/rive_asset.dart';
import 'package:dashboard_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_app/widgets/side_menu_tile.dart';
import 'package:rive/rive.dart';
import '../utils/rive_utils.dart';
import 'info_card.dart';

class SideBar extends StatelessWidget {
  const SideBar ({Key? key}) : super(key: key);

  void riveOn (artboard, menu) {
    StateMachineController? controller =
    RiveUtils.getRiveController(artboard,
        stateMachineName: menu.stateMachineName);
    menu.input = controller?.findSMI("active") as SMIBool;
  }

  void handlePress (menu) {
    menu.input!.change(true);
    Future.delayed(const Duration(seconds: 1), () {
      menu.input!.change(false);
    });
  }

  void onLogoutPress (context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if(auth.currentUser != null) {
      auth.signOut();
      Navigator.pushNamed(context, LoginScreen.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFFF7B00),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 8.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, 4.0),
          ),
        ],
      ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const InfoCard(name:'Dr. John Doe', profession: 'Veterinarian'),
                      const Divider(
                        height: 0,
                        color: Colors.white,
                        thickness: 0.3,
                      ),
                      SizedBox(height: 16.0),
                      const SizedBox(
                          height: 24.0,
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            'Project shortcuts',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                      ...sideMenus.sublist(1).map((menu) => SideMenuTile(
                        menu: menu,
                        press: () => handlePress(menu),
                        riveonInit: (artboard) {
                          riveOn(artboard, menu);
                        },
                        isActive: false,
                      ))
                    ],
                  ),
                ),
              const Divider(
                height: 8,
                color: Colors.white,
                thickness: 0.3,
              ),
              SideMenuTile(
                  menu: sideMenus[0],
                  press: () => onLogoutPress(context),
                  riveonInit: (artboard) {
                    riveOn(artboard, sideMenus[0]);
                  },
                  isActive: false),
              SizedBox(height: 24.0),
            ]
          ),
        ),
    );
  }
}




