import 'package:flutter/material.dart';
import 'package:children_app_login/screens/test3.dart';
import '/screens/test3.dart';
import '../screens/start_screen.dart';

class Test4Screen extends StatelessWidget {
  const Test4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(139, 199, 173, 1),
        ),
        child: Stack(
          children: [
            // Main content container
            Positioned(
              left: -2,
              top: 197,
              child: Container(
                width: MediaQuery.of(context).size.width + 4,
                height: MediaQuery.of(context).size.height - 197,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),

            // Title "Parent"
            const Positioned(
              left: 43,
              top: 35,
              child: Text(
                '4.ด้านสุขภาพร่างกาย\nและพฤติกรรม',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Barlow Semi Condensed',
                  fontSize: 33,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            // Subtitle
            const Positioned(
              left: 43,
              top: 127,
              child: SizedBox(
                width: 235,
                child: Text(
                  'จำนวน 25 ข้อ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Barlow Semi Condensed',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),

            // Profile Avatar
            Positioned(
              right: 23,
              top: 51,
              child: Container(
                width: 70,
                height: 73,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF8BC7AD),
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(139, 199, 173, 1),
                    ),
                    // You can add a profile image here
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),

            // Bottom navigation bar
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 62,
                color: Color.fromRGBO(139, 199, 173, 1),
              ),
            ),

            // Left arrow button
            Positioned(
              left: 22,
              bottom: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Test3Screen(),
                    ),
                  );
                  // Handle left arrow tap
                },
                child: Container(
                  width: 37,
                  height: 37,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(139, 199, 173, 1),
                    size: 20,
                  ),
                ),
              ),
            ),

            // Right arrow button
            Positioned(
              right: 22,
              bottom: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StartScreen(),
                    ),
                  );
                  // Handle right arrow tap
                },
                child: Container(
                  width: 37,
                  height: 37,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(139, 199, 173, 1),
                    size: 20,
                  ),
                ),
              ),
            ),

            // Navigation indicator background
            Positioned(
              left: 65,
              bottom: 8,
              child: Container(
                width: 360,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),

            // Active navigation indicator
            Positioned(
              left: 360,
              bottom: 10.5,
              child: Container(
                width: 60,
                height: 24,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(139, 199, 173, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Usage in your main app:
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parent App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Barlow Semi Condensed',
      ),
      home: const Test4Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() {
  runApp(const MyApp());
}
