import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

void main() {
  runApp(ArabicTestApp());
}

class ArabicTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arabic Math Test',
      home: Scaffold(
        appBar: AppBar(title: Text('Arabic Math Test')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Test 1: Arabic text with \\textar command'),
              SizedBox(height: 20),
              Math.tex(r'\textar{الانطلاق المتوسط} = \frac{\textar{المسافة المقطوعة}}{\textar{الزمن}}',
                  textStyle: TextStyle(fontSize: 24)),
              SizedBox(height: 40),
              Text('Test 2: Mixed Arabic and English'),
              SizedBox(height: 20),
              Math.tex(r'Speed = \frac{Distance}{Time} = \frac{\textar{المسافة}}{\textar{الزمن}}',
                  textStyle: TextStyle(fontSize: 24)),
              SizedBox(height: 40),
              Text('Test 3: Arabic physics equation'),
              SizedBox(height: 20),
              Math.tex(r'\textar{السرعة} = \frac{\textar{المسافة}}{\textar{الوقت}}',
                  textStyle: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}