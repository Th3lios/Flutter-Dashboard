import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;
  
  RiveAsset(this.src, {
    required this.artboard,
    required this.stateMachineName,
    required this.title,
    this.input
  });
  
  set setInput(SMIBool status) => input = status;
}

List<RiveAsset> sideMenus = [
  RiveAsset(
      "assets/RiveAssets/user.riv",
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
      title: "Logout"
  ),
  RiveAsset(
      "assets/RiveAssets/home.riv",
      artboard: "HOME",
      stateMachineName: "HOME_interactivity",
      title: "Home"
  ),
  RiveAsset(
      "assets/RiveAssets/search.riv",
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"
  ),
  RiveAsset(
      "assets/RiveAssets/timer.riv",
      artboard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
      title: "Timer"
  ),
];