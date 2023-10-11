import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/screens/create_room_screen.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void CreateRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void JoinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => CreateRoom(context), text: 'Create Room'),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onTap: () => JoinRoom(context), text: 'Join Room'),
          ],
        ),
      ),
    );
  }
}
