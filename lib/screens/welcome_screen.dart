import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBF0), // Cream background
      body: Stack(
        children: [
          // Yellow curved background at bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 550,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF2D37D), // Yellow primary
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 6,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
          // Main content
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 655),
              margin: const EdgeInsets.only(top: 50, bottom: 30),
              padding: const EdgeInsets.fromLTRB(16, 79, 16, 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Welcome text section
                  Column(
                    children: [
                      Text(
                        'ยินดีต้อนรับ',
                        style: GoogleFonts.barlowSemiCondensed(
                          fontSize: 60,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 3,
                          height: 1.0,
                          color: const Color(0xFF705048), // Brown dark
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'ยินดีต้อนรับสู่ "NON-Autos mine แอปพลิเคชันเพื่อส่งเสริมพัฒนาการของเด็กออทิสติก (ระยะที่ 1 และ 2) \nอย่างครบวงจร',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlowSemiCondensed(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                            height: 1.4,
                            color: const Color(0xFF7F6157), // Brown medium
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height: 64), // 32 + 32 from marginTop and paddingTop
                  // Buttons section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Log in button
                      SizedBox(
                        width: 144,
                        height: 64,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xFF705048), // Brown dark
                            foregroundColor: const Color(0xFFFFFBF0), // Cream
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'เข้าสู่ระบบ',
                            style: GoogleFonts.barlowSemiCondensed(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      // Sign in button
                      SizedBox(
                        width: 144,
                        height: 64,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle sign in
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFBF0), // Cream
                            foregroundColor:
                                const Color(0xFF705048), // Brown dark
                            side: const BorderSide(
                              color: Color(0xFF705048), // Brown dark
                              width: 1.6,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: Text(
                            'ลงชื่อเข้าใช้',
                            style: GoogleFonts.barlowSemiCondensed(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
