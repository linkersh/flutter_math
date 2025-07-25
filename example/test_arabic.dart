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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Test 1: Your original example'),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Math.tex(
                    r'\textar{الانطلاق المتوسط} = \frac{\textar{المسافة المقطوعة}}{\textar{الزمن}}',
                    textStyle: TextStyle(fontSize: 24)
                  ),
                ),
                SizedBox(height: 30),
                
                Text('Test 2: Simple Arabic words'),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Math.tex(
                    r'\textar{السرعة} = \frac{\textar{المسافة}}{\textar{الزمن}}',
                    textStyle: TextStyle(fontSize: 24)
                  ),
                ),
                SizedBox(height: 30),
                
                Text('Test 3: Mixed Arabic and English'),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Math.tex(
                    r'v = \frac{d}{t} = \frac{\textar{المسافة}}{\textar{الزمن}}',
                    textStyle: TextStyle(fontSize: 24)
                  ),
                ),
                SizedBox(height: 30),
                
                Text('Test 4: Multiple Arabic expressions'),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Math.tex(
                    r'\textar{القوة} = \textar{الكتلة} \times \textar{التسارع}',
                    textStyle: TextStyle(fontSize: 24)
                  ),
                ),
                SizedBox(height: 30),
                
                Text('Test 5: Arabic in subscripts and superscripts'),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Math.tex(
                    r'E_{\textar{حركية}} = \frac{1}{2}mv^2',
                    textStyle: TextStyle(fontSize: 24)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}