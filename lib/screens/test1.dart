import 'package:flutter/material.dart';
import '/screens/test2.dart';
import 'ATEC_screen.dart';

class Test1Screen extends StatefulWidget {
  const Test1Screen({Key? key}) : super(key: key);

  @override
  State<Test1Screen> createState() => _Test1ScreenState();
}

class _Test1ScreenState extends State<Test1Screen> {
  final List<String> _questions = [
    'รู้จักชื่อตนเอง',
    'ตอบสนองต่อคำสั่งว่า “ไม่” หรือ “หยุด”',
    'ทำตามคำสั่งบางอย่างได้',
    'พูดเป็นคำๆได้เช่น ไม่ กิน น้ำ เป็นต้น',
    'พูด 2 คำติดกัน เช่น ไม่เอา กลับบ้าน เป็นต้น',
    'พูด 3 คำติดกัน เช่น ขอนมอีก เป็นต้น',
    'รู้จักคำ 10 คำ หรือ มากกว่า',
    'พูดประโยคที่มี 4 คำ ขึ้นไป',
    'พูดอธิบายความต้องการของตัวเองได้',
    'ถามคำถามที่มีความหมาย',
    'คำพูดมีความหมาย/มีความเชื่อมโยง',
    'มักใช้ประโยคที่พูดได้ค่อนข้างบ่อย',
    'พูดคุยโต้ตอบได้ต่อเนื่องค่อนข้างดี',
    'สามารถสื่อสารได้สมวัย',
  ];

  List<int?> _answers = List.filled(14, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF7F95E4),
        ),
        child: Stack(
          children: [
            // White container background
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

            // Title and subtitle
            const Positioned(
              left: 43,
              top: 35,
              child: Text(
                '1.ด้านการพูด\nการใช้ภาษาติดต่อสื่อสาร',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Barlow Semi Condensed',
                  fontSize: 33,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const Positioned(
              left: 43,
              top: 127,
              child: SizedBox(
                width: 235,
                child: Text(
                  'จำนวน 14 ข้อ',
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

            // Avatar
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
                child: const Icon(Icons.person, color: Colors.white, size: 40),
              ),
            ),

            // === คำถามแบบสอบถาม ===
            Positioned(
              top: 220,
              left: 0,
              right: 0,
              bottom: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: _questions.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}. ${_questions[index]}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 0,
                                    groupValue: _answers[index],
                                    onChanged: (value) {
                                      setState(() {
                                        _answers[index] = value;
                                      });
                                    },
                                  ),
                                  const Text("น้อย"),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 1,
                                    groupValue: _answers[index],
                                    onChanged: (value) {
                                      setState(() {
                                        _answers[index] = value;
                                      });
                                    },
                                  ),
                                  const Text("ปานกลาง"),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 2,
                                    groupValue: _answers[index],
                                    onChanged: (value) {
                                      setState(() {
                                        _answers[index] = value;
                                      });
                                    },
                                  ),
                                  const Text("มาก"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            // ปุ่มลูกศรและ nav bar เหมือนเดิม
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 62,
                color: const Color(0xFF7F95E4),
              ),
            ),
            Positioned(
              left: 22,
              bottom: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ATECHomePage(),
                    ),
                  );
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
                    color: Color(0xFF7F95E4),
                    size: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 22,
              bottom: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Test2Screen(),
                    ),
                  );
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
                    color: Color(0xFF7F95E4),
                    size: 20,
                  ),
                ),
              ),
            ),
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
            Positioned(
              left: 70,
              bottom: 10.5,
              child: Container(
                width: 90,
                height: 24,
                decoration: BoxDecoration(
                  color: const Color(0xFF7F95E4),
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
