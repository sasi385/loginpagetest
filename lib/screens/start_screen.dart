import 'package:flutter/material.dart';

class StartButton extends StatefulWidget {
  final VoidCallback? onPressed;

  const StartButton({Key? key, this.onPressed}) : super(key: key);

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 540,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF8BC7AD), // สีเขียวอ่อน
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 48,
        ),
        child: GestureDetector(
          onTapDown: (_) => setState(() => _isPressed = true),
          onTapUp: (_) => setState(() => _isPressed = false),
          onTapCancel: () => setState(() => _isPressed = false),
          onTap: widget.onPressed,
          child: AnimatedScale(
            scale: _isPressed ? 0.95 : 1.0,
            duration: const Duration(milliseconds: 100),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'START',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Barlow Semi Condensed',
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFFAF5EF), // สีพื้นหลัง app
                  letterSpacing: 2.4,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
