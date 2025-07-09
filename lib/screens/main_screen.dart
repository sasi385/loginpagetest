import 'package:flutter/material.dart';

import '../screens/start_screen.dart';

class MAINHomePage extends StatelessWidget {
  const MAINHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/HOME.png', // <-- Replace with your actual image path
              fit: BoxFit.cover,
            ),
          ),
          // Main Content with SafeArea
          SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    // Top Profile Section
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
                      child: Row(
                        children: [
                          // Profile Avatar
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              color: const Color(0xFF8BC7AD),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 1.6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 15,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'SUTINAN SRIVISET',
                                  style: TextStyle(
                                    color: Color(0xFF5F4A46),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.35,
                                    fontFamily: 'Khula',
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 8, 20, 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 6,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFFD370),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.attach_money,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        '12,000,000.00',
                                        style: TextStyle(
                                          color: Color(0xFF9C8A87),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Khula',
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),

                // Right Sidebar
                Positioned(
                  right: 24,
                  top: 90,
                  child: Container(
                    width: 53,
                    height: 186,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      StartScreen()), // เปลี่ยนหน้าได้ตามต้องการ
                            );
                          },
                          child: const _SidebarIcon(
                            icon: Icons.settings,
                            backgroundColor: Color(0x1A5F4A46),
                            iconColor: Color(0xFF5F4A46),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartScreen()),
                            );
                          },
                          child: const _SidebarIcon(
                            icon: Icons.mail,
                            backgroundColor: Color(0x33FED371),
                            iconColor: Color(0xFFFED371),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartScreen()),
                            );
                          },
                          child: const _SidebarIcon(
                            icon: Icons.store,
                            backgroundColor: Color(0x337F95E4),
                            iconColor: Color(0xFF7F95E4),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartScreen()),
                            );
                          },
                          child: const _SidebarIcon(
                            icon: Icons.folder,
                            backgroundColor: Color(0x33F65A3B),
                            iconColor: Color(0xFFF65A3B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom Navigation
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 8,
                          offset: const Offset(0, -4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _BottomNavButton(
                          icon: Icons.home,
                          label: '',
                          isActive: true,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MAINHomePage()));
                          },
                        ),
                        _BottomNavButton(
                          icon: Icons.games,
                          label: 'GAME',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GamePage()));
                          },
                        ),
                        _BottomNavButton(
                          icon: Icons.person,
                          label: 'PROFILE',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const _SidebarIcon({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: iconColor, size: 20),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final bool active;
  final String label;

  const _BottomNavItem({
    required this.icon,
    this.active = false,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: active ? const Color(0xFF7F95E4) : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: active ? Colors.white : const Color(0xFFD9D9D9),
            size: 24,
          ),
        ),
        if (label.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFD9D9D9),
              fontSize: 10,
              fontWeight: FontWeight.w500,
              fontFamily: 'Khula',
            ),
          )
        ]
      ],
    );
  }
}

class _BottomNavButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _BottomNavButton({
    Key? key,
    required this.icon,
    required this.label,
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  @override
  State<_BottomNavButton> createState() => _BottomNavButtonState();
}

class _BottomNavButtonState extends State<_BottomNavButton> {
  double _scale = 1.0;

  void _onTapDown(_) => setState(() => _scale = 0.9);
  void _onTapUp(_) => setState(() => _scale = 1.0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => setState(() => _scale = 1.0),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.icon,
                color: widget.isActive ? Colors.blue : Colors.grey),
            if (widget.label.isNotEmpty)
              Text(
                widget.label,
                style: TextStyle(
                  color: widget.isActive ? Colors.blue : Colors.grey,
                  fontSize: 12,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
