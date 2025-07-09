import 'package:flutter/material.dart';
import '../widgets/backwordbutton-loginpage.dart';
import '../widgets/startbutton.dart'; // สมมุติว่าคุณเก็บ StartButton ไว้ในไฟล์นี้

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔹 ภาพพื้นหลังเต็มจอ
          Positioned.fill(
            child: Image.asset(
              'assets/images/WELCOME1.png',
              fit: BoxFit.cover,
            ),
          ),

          // 🔹 ปุ่ม Back ด้านบนซ้าย
          const Positioned(
            top: 32,
            left: 16,
            child: BackButtonWidget(),
          ),

          // 🔹 ปุ่ม START ล่างสุดของจอ
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.0),
              child: StartButton(),
            ),
          ),
        ],
      ),
    );
  }
}
