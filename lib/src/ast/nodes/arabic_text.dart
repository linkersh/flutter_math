import 'package:flutter/widgets.dart';

import '../options.dart';
import '../syntax_tree.dart';
import '../types.dart';

/// Node for Arabic text that handles proper shaping and RTL rendering
class ArabicTextNode extends LeafNode {
  /// Arabic text content
  final String text;

  ArabicTextNode({required this.text});

  @override
  AtomType get leftType => AtomType.ord;

  @override
  AtomType get rightType => AtomType.ord;

  @override
  BuildResult buildWidget(
      MathOptions options, List<BuildResult?> childBuildResults) {
    return BuildResult(
      options: options,
      widget: _buildArabicText(text, options),
      italic: 0.0,
      skew: 0.0,
    );
  }

  Widget _buildArabicText(String text, MathOptions options) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: RichText(
          text: TextSpan(
            text: text,
            style: TextStyle(
              fontFamily: options.textFontOptions?.fontFamily != null
                  ? 'packages/flutter_math_fork/KaTeX_${options.textFontOptions!.fontFamily}'
                  : 'packages/flutter_math_fork/KaTeX_NotoNaskhArabic',
              fontWeight: options.textFontOptions?.fontWeight ?? FontWeight.normal,
              fontStyle: options.textFontOptions?.fontShape ?? FontStyle.normal,
              fontSize: 1.0.cssEm.toLpUnder(options),
              color: options.color,
            ),
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          softWrap: false,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }

  @override
  bool shouldRebuildWidget(MathOptions oldOptions, MathOptions newOptions) {
    return oldOptions.textFontOptions != newOptions.textFontOptions ||
        oldOptions.color != newOptions.color ||
        oldOptions.fontSize != newOptions.fontSize;
  }
}