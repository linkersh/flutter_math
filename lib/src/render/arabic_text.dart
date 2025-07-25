import 'package:flutter/widgets.dart';
import '../ast/options.dart';

/// Widget for rendering Arabic text with proper shaping and bidirectional support
class ArabicTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ArabicTextWidget({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: IntrinsicWidth(
        child: Text(
          text,
          style: style,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          softWrap: false,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}

/// Build function for Arabic text
Widget buildArabicText(String text, FontOptions font, MathOptions options) {
  return ArabicTextWidget(
    text: text,
    style: TextStyle(
      fontFamily: 'packages/flutter_math_fork/KaTeX_${font.fontFamily}',
      fontWeight: font.fontWeight,
      fontStyle: font.fontShape,
      fontSize: 1.0.cssEm.toLpUnder(options),
      color: options.color,
    ),
  );
}