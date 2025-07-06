import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/backwordbutton-loginpage.dart';
import '../widgets/SocialLoginButton.dart';
import 'package:children_app_login/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowPrimary,
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Back Button
                      const BackButtonWidget(),
                      const SizedBox(height: 32),

                      // Title
                      Text(
                        'ลงชื่อเข้าใช้',
                        style: GoogleFonts.barlowSemiCondensed(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColors.brownPrimary,
                          letterSpacing: 2.0,
                          height: 1.0,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Subtitle
                      SizedBox(
                        width: 291,
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // ปรับแนวชิดซ้าย
                          children: [
                            Text(
                              'สวัสดี!! เราคือแอปพลิเคชันเพื่อส่งเสริมพัฒนาการของเด็กออทิสติก\n',
                              style: GoogleFonts.barlowSemiCondensed(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.brownSecondary,
                                letterSpacing: 0.8,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              'โปรดลงทะเบียนเพื่อเป็นการบันทึกข้อมูล',
                              style: GoogleFonts.barlowSemiCondensed(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.brownSecondary,
                                letterSpacing: 0.8,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),

            // Login Form Card
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(32, 72, 32, 32),
                  child: Column(
                    children: [
                      // Username Input
                      Container(
                        width: double.infinity,
                        height: 59,
                        decoration: BoxDecoration(
                          color: AppColors.cream,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'ชื่อผู้ใช้',
                              style: GoogleFonts.barlowSemiCondensed(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.brownTertiary,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Password Input
                      Container(
                        width: double.infinity,
                        height: 59,
                        decoration: BoxDecoration(
                          color: AppColors.cream,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'รหัสผ่าน',
                              style: GoogleFonts.barlowSemiCondensed(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.brownTertiary,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Forgot Password Link

                      const SizedBox(height: 24),

                      // Login Button
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.brownPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Log in',
                            style: GoogleFonts.barlowSemiCondensed(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              letterSpacing: 1.45,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Divider with "or"
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: AppColors.brownTertiary,
                              thickness: 1,
                              endIndent: 16,
                            ),
                          ),
                          Text(
                            'or',
                            style: GoogleFonts.barlowSemiCondensed(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.brownTertiary,
                              letterSpacing: 0.8,
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              color: AppColors.brownTertiary,
                              thickness: 1,
                              indent: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),

                      // Social Login Buttons
                      Column(
                        children: [
                          SocialLoginButton(
                            text: 'Continue with Google',
                            backgroundColor: AppColors.yellowSecondary,
                            iconWidget: Container(
                              width: 38,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.g_mobiledata,
                                color: AppColors.yellowSecondary,
                                size: 24,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
