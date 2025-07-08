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
          // พื้นหลัง (สีหรือรูปภาพ)
          Positioned.fill(
            child: Container(color: Colors.white),
          ),

          // 🔹 ปุ่ม Back ด้านบนซ้าย
          const Positioned(
            top: 32,
            left: 16,
            child: BackButtonWidget(),
          ),

          // 🔹 ปุ่ม START ล่างสุดของจอ
          const StartButton(),
        ],
      ),
    );
  }
}
