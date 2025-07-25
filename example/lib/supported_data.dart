const supportedData = {
  'Accents': [
    r"a'",
    r'\tilde{a}',
    // r'\mathring{g}',
    r"a''",
    r'\widetilde{ac}',
    // r'\overgroup{AB}',
    r'a^{\prime}',
    r'\utilde{AB}',
    r'\undergroup{AB}',
    r'\acute{a}',
    r'\vec{F}',
    r'\Overrightarrow{AB}',
    r'\bar{y}',
    r'\overleftarrow{AB}',
    r'\overrightarrow{AB}',
    r'\breve{a}',
    r'\underleftarrow{AB}',
    r'\underrightarrow{AB}',
    r'\check{a}',
    r'\overleftharpoon{ac}',
    r'\overrightharpoon{ac}',
    r'\dot{a}',
    r'\overleftrightarrow{AB}',
    r'\overbrace{AB}',
    r'\ddot{a}',
    r'\underleftrightarrow{AB}',
    r'\underbrace{AB}',
    r'\grave{a}',
    r'\overline{AB}',
    // r'\overlinesegment{AB}',
    r'\hat{\theta}',
    r'\underline{AB}',
    // r'\underlinesegment{AB}',
    r'\widehat{ac}',
    r'\widecheck{ac}',
  ],
  // Accent functions inside \\text{…}

  'Delimiters': [
    r'(~)',
    r'\lparen~\rparen',
    r'⌈~⌉',
    r'\lceil~\rceil',
    r'\uparrow',
    r'[~]',
    r'\lbrack~\rbrack',
    r'⌊~⌋',
    r'\lfloor~\rfloor',
    r'\downarrow',
    r'\{ \}',
    r'\lbrace \rbrace',
    r'⎰⎱',
    r'\lmoustache \rmoustache',
    r'\updownarrow',
    r'⟨~⟩',
    r'\langle~\rangle',
    r'⟮~⟯',
    r'\lgroup~\rgroup',
    r'\Uparrow',
    r'\vert',
    r'\vert',
    r'┌ ┐',
    r'\ulcorner \urcorner',
    r'\Downarrow',
    r'\Vert',
    r'\Vert',
    r'└ ┘',
    r'\llcorner \lrcorner',
    r'\Updownarrow',
    r'\lvert~\rvert',
    r'\lVert~\rVert',
    r'\backslash',
    r'\lang~\rang',
    r'\lt~\gt',
    r'⟦~⟧',
    r'\llbracket~\rrbracket',
    r'\lBrace~\rBrace',
  ],
  'Delimiter Sizing': [
    r'\left(\LARGE{AB}\right)',
    r'( \big( \Big( \bigg( \Bigg(',
  ],
  'Environment': [
    r'\begin{matrix} a & b \\ c & d \end{matrix}',
    r'\begin{array}{cc}a & b\\c & d\end{array}',
    r'\begin{pmatrix} a & b \\ c & d \end{pmatrix}',
    r'\begin{bmatrix} a & b \\ c & d \end{bmatrix}',
    r'\begin{vmatrix} a & b \\ c & d \end{vmatrix}',
    r'\begin{Vmatrix} a & b \\ c & d \end{Vmatrix}',
    r'\begin{Bmatrix} a & b \\ c & d \end{Bmatrix}',
    // r'\def\arraystretch{1.5}\begin{array}{c:c:c} a & b & c \\ \hline d & e & f \\ \hdashline g & h & i \end{array}',
    r'\begin{array}{c:c:c} a & b & c \\ \hline d & e & f \\ \hdashline g & h & i \end{array}',
    r'\begin{aligned} a&=b+c \\ d+e&=f \end{aligned}',
    r'\begin{alignedat}{2}10&x+&3&y=2\\3&x+&13&y=4\end{alignedat}',
    r'\begin{gathered} a=b \\ e=b+c \end{gathered}',
    r'x = \begin{cases} a &\text{if } b \\ c &\text{if } d \end{cases}',
    r'\begin{smallmatrix} a & b \\ c & d \end{smallmatrix}',
    r'\begin{rcases} a &\text{if } b \\ c &\text{if } d \end{rcases}⇒…',
  ],

  // HTML,

  'Greek Letters': [
    r'\Alpha',
    r'\Beta',
    r'\Gamma',
    r'\Delta',
    r'\Epsilon',
    r'\Zeta',
    r'\Eta',
    r'\Theta',
    r'\Iota',
    r'\Kappa',
    r'\Lambda',
    r'\Mu',
    r'\Nu',
    r'\Xi',
    r'\Omicron',
    r'\Pi',
    r'\Rho',
    r'\Sigma',
    r'\Tau',
    r'\Upsilon',
    r'\Phi',
    r'\Chi',
    r'\Psi',
    r'\Omega',
    r'\varGamma',
    r'\varDelta',
    r'\varTheta',
    r'\varLambda',
    r'\varXi',
    r'\varPi',
    r'\varSigma',
    r'\varUpsilon',
    r'\varPhi',
    r'\varPsi',
    r'\varOmega',
    r'\alpha',
    r'\beta',
    r'\gamma',
    r'\delta',
    r'\epsilon',
    r'\zeta',
    r'\eta',
    r'\theta',
    r'\iota',
    r'\kappa',
    r'\lambda',
    r'\mu',
    r'\nu',
    r'\xi',
    r'\omicron',
    r'\pi',
    r'\rho',
    r'\sigma',
    r'\tau',
    r'\upsilon',
    r'\phi',
    r'\chi',
    r'\psi',
    r'\omega',
    r'\varepsilon',
    r'\varkappa',
    r'\vartheta',
    r'\thetasym',
    r'\varpi',
    r'\varrho',
    r'\varsigma',
    r'\varphi',
    r'\digamma ',
  ],

  'Other characters': [
    r'\imath',
    r'\nabla',
    r'\Im',
    r'\Reals',
    r'\text{\OE}',
    r'\jmath',
    r'\partial',
    r'\image',
    r'\wp',
    r'\text{\o}',
    r'\aleph',
    r'\Game',
    r'\Bbbk',
    r'\weierp',
    r'\text{\O}',
    r'\alef',
    r'\Finv',
    r'\N',
    r'\Z',
    r'\text{\ss}',
    r'\alefsym',
    r'\cnums',
    r'\natnums',
    // r'\text{\aa}',
    r'\text{\i}',
    r'\beth',
    r'\Complex',
    r'\R',
    // r'\text{\AA}',
    r'\text{\j}',
    r'\gimel',
    r'\ell',
    r'\Re',
    r'\text{\ae}',
    r'\daleth',
    r'\hbar',
    r'\real',
    r'\text{\AE}',
    r'\eth',
    r'\hslash',
    r'\reals',
    r'\text{\oe}',
  ],
  'Unicode Mathematical Alphanumeric Symbols': [
    r'\text{𝐀-𝐙 𝐚-𝐳 𝟎-𝟗}',
    r'\text{𝔸-}ℤ\ 𝕜',
    r'\text{𝐴-𝑍 𝑎-𝑧}',
    r'\text{𝖠-𝖹 𝖺-𝗓 𝟢-𝟫}',
    r'\text{𝑨-𝒁 𝒂-𝒛}',
    r'\text{𝗔-𝗭 𝗮-𝘇 𝟬-𝟵}',
    r'\text{𝒜-𝒵}',
    r'\text{𝘈-𝘡 𝘢-𝘻}',
    r'\text{𝔄-}ℨ\text{ 𝔞-𝔷}',
    r'\text{𝙰-𝚉 𝚊-𝚣 𝟶-𝟿}',
  ],
  'Layout - Annotation': [
    r'\cancel{5}',
    r'\overbrace{a+b+c}^{\text{note}}',
    r'\bcancel{5}',
    r'\underbrace{a+b+c}_{\text{note}}',
    r'\xcancel{ABC}',
    r'\not =',
    r'\sout{abc}',
    r'\boxed{\pi=\frac c d}',
    // r'\tag{hi} x+y^{2x}',
    // r'\tag*{hi} x+y^{2x}',
  ],
  'Layout - Vertical Layout': [
    r'x_n',
    r'\stackrel{!}{=}',
    r'a \atop b',
    r'e^x',
    r'\overset{!}{=}',
    r'a\raisebox{0.25em}{b}c',
    r'_u^o ',
    r'\underset{!}{=}',
    r'\sum_{\substack{0<i<m\\0<j<n}}',
  ],
  // 'Layout - Overlap and Spacing'
  'Logic and Set Theory': [
    r'\forall',
    r'\complement',
    r'\therefore',
    r'\emptyset',
    r'\exists',
    r'\subset',
    r'\because',
    r'\empty',
    r'\exist',
    r'\supset',
    r'\mapsto',
    r'\varnothing',
    r'\nexists',
    r'\mid',
    r'\to',
    r'\implies',
    r'\in',
    r'\land',
    r'\gets',
    r'\impliedby',
    r'\isin',
    r'\lor',
    r'\leftrightarrow',
    r'\iff',
    r'\notin',
    r'\ni',
    r'\notni',
    r'\neg',
  ],
  // 'Macros': [
  //   r'\def\foo{x^2} \foo + \foo',
  //   r'\gdef\bar#1{#1^2} \bar{y} + \bar{y}',
  // ],
  'Big Operators': [
    r'\sum',
    r'\prod',
    r'\bigotimes',
    r'\bigvee',
    r'\int',
    r'\coprod',
    r'\bigoplus',
    r'\bigwedge',
    r'\iint',
    r'\intop',
    r'\bigodot',
    r'\bigcap',
    r'\iiint',
    r'\smallint',
    r'\biguplus',
    r'\bigcup',
    r'\oint',
    r'\oiint',
    r'\oiiint',
    r'\bigsqcup',
  ],

  'Binary Operator': [
    r'+',
    r'\cdot',
    r'\gtrdot',
    r'x \pmod a',
    r'-',
    r'\cdotp',
    r'\intercal',
    r'x \pod a',
    r'/',
    r'\centerdot',
    r'\land',
    r'\rhd',
    r'*',
    r'\circ',
    r'\leftthreetimes',
    r'\rightthreetimes',
    r'\amalg',
    r'\circledast',
    r'\ldotp',
    r'\rtimes',
    r'\And',
    r'\circledcirc',
    r'\lor',
    r'\setminus',
    r'\ast',
    r'\circleddash',
    r'\lessdot',
    r'\smallsetminus',
    r'\barwedge',
    r'\Cup',
    r'\lhd',
    r'\sqcap',
    r'\bigcirc',
    r'\cup',
    r'\ltimes',
    r'\sqcup',
    r'\bmod',
    r'\curlyvee',
    r'x \mod a',
    r'\times',
    r'\boxdot',
    r'\curlywedge',
    r'\mp',
    r'\unlhd',
    r'\boxminus',
    r'\div',
    r'\odot',
    r'\unrhd',
    r'\boxplus',
    r'\divideontimes',
    r'\ominus',
    r'\uplus',
    r'\boxtimes',
    r'\dotplus',
    r'\oplus',
    r'\vee',
    r'\bullet',
    r'\doublebarwedge',
    r'\otimes',
    r'\veebar',
    r'\Cap',
    r'\doublecap',
    r'\oslash',
    r'\wedge',
    r'\cap',
    r'\doublecup',
    r'\pm',
    r'\wr',
  ],
  'Fractions and Binomials': [
    r'\frac{a}{b}',
    r'\tfrac{a}{b}',
    r'\genfrac ( ] {2pt}{1}a{a+1}',
    r'{a \over b}',
    r'\dfrac{a}{b}',
    r'{a \above{2pt} b+1}',
    r'a/b',
    r'\cfrac{a}{1 + \cfrac{1}{b}}',
    r'\binom{n}{k}',
    r'\dbinom{n}{k}',
    r'{n\brace k}',
    r'{n \choose k}',
    r'\tbinom{n}{k}',
    r'{n\brack k}',
  ],
  'Math Operators': [
    r'\arcsin',
    r'\cotg',
    r'\ln',
    r'\det',
    r'\arccos',
    r'\coth',
    r'\log',
    r'\gcd',
    r'\arctan',
    r'\csc',
    r'\sec',
    r'\inf',
    r'\arctg',
    r'\ctg',
    r'\sin',
    r'\lim',
    r'\arcctg',
    r'\cth',
    r'\sinh',
    r'\liminf',
    r'\arg',
    r'\deg',
    r'\sh',
    r'\limsup',
    r'\ch',
    r'\dim',
    r'\tan',
    r'\max',
    r'\cos',
    r'\exp',
    r'\tanh',
    r'\min',
    r'\cosec',
    r'\hom',
    r'\tg',
    r'\Pr',
    r'\cosh',
    r'\ker',
    r'\th',
    r'\sup',
    r'\cot',
    r'\lg',
    r'\argmax',
    r'\argmin',
    r'\plim',
    r'\operatorname{f}',
    r'\operatorname*{f}',
    r'\sqrt{x}',
    r'\sqrt[3]{x}',
  ],

  'Relations': [
    r'=',
    r'\eqcirc',
    r'\lesseqgtr',
    r'\sqsupset',
    r'<',
    r'\eqcolon',
    r'\lesseqqgtr',
    r'\sqsupseteq',
    r'>',
    // r'\Eqcolon',
    r'\lessgtr',
    r'\Subset',
    r':',
    r'\eqqcolon',
    r'\lesssim',
    r'\subset',
    r'\approx',
    // r'\Eqqcolon',
    r'\ll',
    r'\subseteq',
    r'\approxeq',
    r'\eqsim',
    r'\lll',
    r'\subseteqq',
    r'\asymp',
    r'\eqslantgtr',
    r'\llless',
    r'\succ',
    r'\backepsilon',
    r'\eqslantless',
    r'\lt',
    r'\succapprox',
    r'\backsim',
    r'\equiv',
    r'\mid',
    r'\succcurlyeq',
    r'\backsimeq',
    r'\fallingdotseq',
    r'\models',
    r'\succeq',
    r'\between',
    r'\frown',
    r'\multimap',
    r'\succsim',
    r'\bowtie',
    r'\ge',
    r'\owns',
    r'\Supset',
    r'\bumpeq',
    r'\geq',
    r'\parallel',
    r'\supset',
    r'\Bumpeq',
    r'\geqq',
    r'\perp',
    r'\supseteq',
    r'\circeq',
    r'\geqslant',
    r'\pitchfork',
    r'\supseteqq',
    // r'\colonapprox',
    r'\gg',
    r'\prec',
    r'\thickapprox',
    // r'\Colonapprox',
    r'\ggg',
    r'\precapprox',
    r'\thicksim',
    // r'\coloneq',
    r'\gggtr',
    r'\preccurlyeq',
    r'\trianglelefteq',
    // r'\Coloneq',
    r'\gt',
    r'\preceq',
    r'\triangleq',
    r'\coloneqq',
    r'\gtrapprox',
    r'\precsim',
    r'\trianglerighteq',
    // r'\Coloneqq',
    r'\gtreqless',
    r'\propto',
    r'\varpropto',
    // r'\colonsim',
    r'\gtreqqless',
    r'\risingdotseq',
    r'\vartriangle',
    // r'\Colonsim',
    r'\gtrless',
    r'\shortmid',
    r'\vartriangleleft',
    r'\cong',
    r'\gtrsim',
    r'\shortparallel',
    r'\vartriangleright',
    r'\curlyeqprec',
    r'\in',
    r'\sim',
    r'\vcentcolon',
    r'\curlyeqsucc',
    r'\Join',
    r'\simeq',
    r'\vdash',
    r'\dashv',
    r'\le',
    r'\smallfrown',
    r'\vDash',
    r'\dblcolon',
    r'\leq',
    r'\smallsmile',
    r'\Vdash',
    r'\doteq',
    r'\leqq',
    r'\smile',
    r'\Vvdash',
    r'\Doteq',
    r'\leqslant',
    r'\sqsubset',
    r'\doteqdot',
    r'\lessapprox',
    r'\sqsubseteq',
  ],

  'Negated Relations': [
    r'\gnapprox',
    r'\ngeqslant',
    r'\nsubseteq',
    r'\precneqq',
    r'\gneq',
    r'\ngtr',
    r'\nsubseteqq',
    r'\precnsim',
    r'\gneqq',
    r'\nleq',
    r'\nsucc',
    r'\subsetneq',
    r'\gnsim',
    r'\nleqq',
    r'\nsucceq',
    r'\subsetneqq',
    r'\gvertneqq',
    r'\nleqslant',
    r'\nsupseteq',
    r'\succnapprox',
    r'\lnapprox',
    r'\nless',
    r'\nsupseteqq',
    r'\succneqq',
    r'\lneq',
    r'\nmid',
    r'\ntriangleleft',
    r'\succnsim',
    r'\lneqq',
    r'\notin',
    r'\ntrianglelefteq',
    r'\supsetneq',
    r'\lnsim',
    r'\notni',
    r'\ntriangleright',
    r'\supsetneqq',
    r'\lvertneqq',
    r'\nparallel',
    r'\ntrianglerighteq',
    r'\varsubsetneq',
    r'\ncong',
    r'\nprec',
    r'\nvdash',
    r'\varsubsetneqq',
    r'\ne',
    r'\npreceq',
    r'\nvDash',
    r'\varsupsetneq',
    r'\neq',
    r'\nshortmid',
    r'\nVDash',
    r'\varsupsetneqq',
    r'\ngeq',
    r'\nshortparallel',
    r'\nVdash',
    r'\ngeqq',
    r'\nsim',
    r'\precnapprox',
  ],

  'Arrows': [
    r'\circlearrowleft',
    r'\leftharpoonup',
    r'\rArr',
    r'\circlearrowright',
    r'\leftleftarrows',
    r'\rarr',
    r'\curvearrowleft',
    r'\leftrightarrow',
    r'\restriction',
    r'\curvearrowright',
    r'\Leftrightarrow',
    r'\rightarrow',
    r'\Darr',
    r'\leftrightarrows',
    r'\Rightarrow',
    r'\dArr',
    r'\leftrightharpoons',
    r'\rightarrowtail',
    r'\darr',
    r'\leftrightsquigarrow',
    r'\rightharpoondown',
    r'\dashleftarrow',
    r'\Lleftarrow',
    r'\rightharpoonup',
    r'\dashrightarrow',
    r'\longleftarrow',
    r'\rightleftarrows',
    r'\downarrow',
    r'\Longleftarrow',
    r'\rightleftharpoons',
    r'\Downarrow',
    r'\longleftrightarrow',
    r'\rightrightarrows',
    r'\downdownarrows',
    r'\Longleftrightarrow',
    r'\rightsquigarrow',
    r'\downharpoonleft',
    r'\longmapsto',
    r'\Rrightarrow',
    r'\downharpoonright',
    r'\longrightarrow',
    r'\Rsh',
    r'\gets',
    r'\Longrightarrow',
    r'\searrow',
    r'\Harr',
    r'\looparrowleft',
    r'\swarrow',
    r'\hArr',
    r'\looparrowright',
    r'\to',
    r'\harr',
    r'\Lrarr',
    r'\twoheadleftarrow',
    r'\hookleftarrow',
    r'\lrArr',
    r'\twoheadrightarrow',
    r'\hookrightarrow',
    r'\lrarr',
    r'\Uarr',
    r'\iff',
    r'\Lsh',
    r'\uArr',
    r'\impliedby',
    r'\mapsto',
    r'\uarr',
    r'\implies',
    r'\nearrow',
    r'\uparrow',
    r'\Larr',
    r'\nleftarrow',
    r'\Uparrow',
    r'\lArr',
    r'\nLeftarrow',
    r'\updownarrow',
    r'\larr',
    r'\nleftrightarrow',
    r'\Updownarrow',
    r'\leadsto',
    r'\nLeftrightarrow',
    r'\upharpoonleft',
    r'\leftarrow',
    r'\nrightarrow',
    r'\upharpoonright',
    r'\Leftarrow',
    r'\nRightarrow',
    r'\upuparrows',
    r'\leftarrowtail',
    r'\nwarrow',
    r'\leftharpoondown',
    r'\Rarr',
  ],
  'Extensible Arrows': [
    r'\xleftarrow{abc}',
    r'\xrightarrow[under]{over}',
    r'\xLeftarrow{abc}',
    r'\xRightarrow{abc}',
    r'\xleftrightarrow{abc}',
    r'\xLeftrightarrow{abc}',
    r'\xhookleftarrow{abc}',
    r'\xhookrightarrow{abc}',
    r'\xtwoheadleftarrow{abc}',
    r'\xtwoheadrightarrow{abc}',
    r'\xleftharpoonup{abc}',
    r'\xrightharpoonup{abc}',
    r'\xleftharpoondown{abc}',
    r'\xrightharpoondown{abc}',
    r'\xleftrightharpoons{abc}',
    r'\xrightleftharpoons{abc}',
    r'\xtofrom{abc}',
    r'\xmapsto{abc}',
    r'\xlongequal{abc}',
  ],
  'Special Notation': [
    r'\bra{\phi}',
    r'\ket{\psi}',
    r'\braket{\phi\vert\psi}',
    r'\Bra{\phi}',
    r'\Ket{\psi}',
  ],

  // Class Assignment

  'Color': [
    r'\color{blue} F=ma',
    r'\textcolor{blue}{F=ma}',
    r'\textcolor{#228B22}{F=ma}',
    r'\colorbox{aqua}{A}',
    r'\fcolorbox{red}{aqua}{A}',
  ],
  'Font': [
    r'\mathrm{Ab0}',
    r'\mathbf{Ab0}',
    r'\mathit{Ab0}',
    // r'\mathnormal{Ab0}',
    r'\textbf{Ab0}',
    r'\textit{Ab0}',
    r'\textrm{Ab0}',
    r'\bf Ab0',
    r'\it Ab0',
    r'\rm Ab0',
    r'\bold{Ab0}',
    r'\textup{Ab0}',
    r'\textar{Ab0}',
    r'\textnormal{Ab0}',
    r'\boldsymbol{Ab0}',
    r'\Bbb{AB}',
    r'\text{Ab0}',
    r'\bm{Ab0}',
    r'\mathbb{AB}',
    r'\mathsf{Ab0}',
    r'\textmd{Ab0}',
    r'\frak{Ab0}',
    r'\textsf{Ab0}',
    r'\mathtt{Ab0}',
    r'\mathfrak{Ab0}',
    r'\sf Ab0',
    r'\texttt{Ab0}',
    r'\mathcal{AB0}',
    r'\tt Ab0',
    r'\cal AB0',
    r'\mathscr{AB}',
  ],
  'Size': [
    r'\Huge AB',
    r'\normalsize AB',
    r'\huge AB',
    r'\small AB',
    r'\LARGE AB',
    r'\footnotesize AB',
    r'\Large AB',
    r'\scriptsize AB',
    r'\large AB',
    r'\tiny AB',
  ],

  'Style': [
    r'\displaystyle\sum_{i=1}^n',
    r'\textstyle\sum_{i=1}^n',
    r'\scriptstyle x',
    r'\scriptscriptstyle x',
    r'\lim\limits_x',
    r'\lim\nolimits_x',
    r'\verb!x^2!',
  ],

  '': [
    r'\dots',
    r'\KaTeX',
    r'\%',
    r'\cdots',
    r'\LaTeX',
    r'\#',
    r'\ddots',
    r'\TeX',
    r'\&',
    r'\ldots',
    r'\nabla',
    r'\_',
    r'\vdots',
    r'\infty',
    r'\text{\textunderscore}',
    r'\dotsb',
    r'\infin',
    r'\text{--}',
    r'\dotsc',
    r'\checkmark',
    r'\text{\textendash}',
    r'\dotsi',
    r'\dag',
    r'\text{---}',
    r'\dotsm',
    r'\dagger',
    r'\text{\textemdash}',
    r'\dotso',
    r'\text{\textdagger}',
    r'\text{\textasciitilde}',
    r'\sdot',
    r'\ddag',
    r'\text{\textasciicircum}',
    r'\mathellipsis',
    r'\ddagger',
    r'`',
    r'\text{\textellipsis}',
    r'\text{\textdaggerdbl}',
    r'\text{\textquoteleft}',
    r'\Box',
    r'\Dagger',
    r'\lq',
    r'\square',
    r'\angle',
    r'\text{\textquoteright}',
    r'\blacksquare',
    r'\measuredangle',
    r'\rq',
    r'\triangle',
    r'\sphericalangle',
    r'\text{\textquotedblleft}',
    r'\triangledown',
    r'\top',
    r'"',
    r'\triangleleft',
    r'\bot',
    r'\text{\textquotedblright}',
    r'\triangleright',
    r'\$',
    r'\colon',
    r'\bigtriangledown',
    r'\text{\textdollar}',
    r'\backprime',
    r'\bigtriangleup',
    r'\pounds',
    r'\prime',
    r'\blacktriangle',
    r'\mathsterling',
    r'\text{\textless}',
    r'\blacktriangledown',
    r'\text{\textsterling}',
    r'\text{\textgreater}',
    r'\blacktriangleleft',
    r'\yen',
    r'\text{\textbar}',
    r'\blacktriangleright',
    r'\surd',
    r'\text{\textbardbl}',
    r'\diamond',
    r'\degree',
    r'\text{\textbraceleft}',
    r'\Diamond',
    r'\text{\textdegree}',
    r'\text{\textbraceright}',
    r'\lozenge',
    r'\mho',
    r'\text{\textbackslash}',
    r'\blacklozenge',
    r'\diagdown',
    r'\text{\P}',
    r'\star',
    r'\diagup',
    r'\text{\S}',
    r'\bigstar',
    r'\flat',
    r'\text{\sect}',
    r'\clubsuit',
    r'\natural',
    // r'\copyright',
    r'\clubs',
    r'\sharp',
    r'\circledR',
    r'\diamondsuit',
    r'\heartsuit',
    // r'\text{\textregistered}',
    r'\diamonds',
    r'\hearts',
    r'\circledS',
    r'\spadesuit',
    r'\spades',
    // r'\text{\textcircled a}',
    r'\maltese',
  ],
  'Units': [
    r'\rule{1em}{1em}',
    r'\scriptscriptstyle\rule{1em}{1em}',
    r'\huge\rule{1em}{1em}',
    r'\rule{18mu}{18mu}',
    r'\scriptscriptstyle\rule{18mu}{18mu}',
    r'\huge\rule{18mu}{18mu}',
    r'\rule{10pt}{10pt}',
    r'\scriptscriptstyle\rule{10pt}{10pt}',
    r'\huge\rule{10pt}{10pt}',
  ]
};
