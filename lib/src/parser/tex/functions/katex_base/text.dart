// The MIT License (MIT)
//
// Copyright (c) 2013-2019 Khan Academy and other contributors
// Copyright (c) 2020 znjameswu <znjameswu@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the 'Software'), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

part of katex_base;

const _textEntries = {
  [
    // Font families
    '\\text', '\\textrm', '\\textsf', '\\texttt', '\\textnormal', '\\textar',
    // Font weights
    '\\textbf', '\\textmd',
    // Font Shapes
    '\\textit', '\\textup',
  ]: FunctionSpec(
    numArgs: 1,
    greediness: 2,
    allowedInText: true,
    handler: _textHandler,
  )
};
GreenNode _textHandler(TexParser parser, FunctionContext context) {
  final body = parser.parseArgNode(mode: Mode.text, optional: false)!;
  final fontOptions = texTextFontOptions[context.funcName];
  if (fontOptions == null) return body;
  
  // For Arabic text, we need special handling
  if (context.funcName == '\\textar') {
    return _handleArabicText(body, fontOptions);
  } else {
    return StyleNode(
      optionsDiff: OptionsDiff(textFontOptions: fontOptions),
      children: body.expandEquationRow(),
    );
  }
}

/// Special handler for Arabic text that preserves word structure
GreenNode _handleArabicText(GreenNode body, PartialFontOptions fontOptions) {
  // Extract text content from the body
  final children = body.expandEquationRow();
  final textContent = _extractTextContent(children);
  
  if (textContent.isNotEmpty) {
    // Create a custom Arabic text node that handles proper shaping
    return StyleNode(
      optionsDiff: OptionsDiff(
        textFontOptions: fontOptions,
        textDirection: TextDirection.rtl,
      ),
      children: [
        _ArabicTextNode(text: textContent),
      ],
    );
  }
  
  // Fallback to regular handling if we can't extract text
  return StyleNode(
    optionsDiff: OptionsDiff(
      textFontOptions: fontOptions,
      textDirection: TextDirection.rtl,
    ),
    children: children,
  );
}

/// Extract text content from a list of nodes
String _extractTextContent(List<GreenNode> nodes) {
  final buffer = StringBuffer();
  for (final node in nodes) {
    if (node is SymbolNode) {
      buffer.write(node.symbol);
    } else if (node is SpaceNode) {
      buffer.write(' ');
    }
    // Could add more node types if needed
  }
  return buffer.toString();
}

/// Custom node for rendering Arabic text with proper shaping
class _ArabicTextNode extends LeafNode {
  final String text;

  _ArabicTextNode({required this.text});

  @override
  Mode get mode => Mode.text;

  @override
  AtomType get leftType => AtomType.ord;

  @override
  AtomType get rightType => AtomType.ord;

  @override
  BuildResult buildWidget(
      MathOptions options, List<BuildResult?> childBuildResults) {
    return BuildResult(
      options: options,
      widget: _buildArabicWidget(options),
      italic: 0.0,
      skew: 0.0,
    );
  }

  Widget _buildArabicWidget(MathOptions options) {
    return Directionality(
      textDirection: TextDirection.rtl,
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
    );
  }

  @override
  bool shouldRebuildWidget(MathOptions oldOptions, MathOptions newOptions) {
    return oldOptions.textFontOptions != newOptions.textFontOptions ||
        oldOptions.color != newOptions.color ||
        oldOptions.fontSize != newOptions.fontSize;
  }
}
