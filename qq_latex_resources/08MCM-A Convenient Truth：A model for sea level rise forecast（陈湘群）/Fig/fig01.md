%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.3
%%Title: fig01.md
%%CreationDate: Sun Jul 27 21:25:28 2008
%%BoundingBox: 108 142 461 707
%%DocumentFonts: ArialMT
%%Orientation: Portrait
%%EndComments
%%BeginProlog
%%BeginResource: procset MayuraDraw_ops
%%Version: 4.3
%%Copyright: (c) 1993-2003 Mayura Software
/PDXDict 100 dict def
PDXDict begin
% width height matrix proc key cache
% definepattern -\> font
/definepattern { %def
  7 dict begin
    /FontDict 9 dict def
    FontDict begin
      /cache exch def
      /key exch def
      /proc exch cvx def
      /mtx exch matrix invertmatrix def
      /height exch def
      /width exch def
      /ctm matrix currentmatrix def
      /ptm matrix identmatrix def
      /str
      (xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)
      def
    end
    /FontBBox [ %def
      0 0 FontDict /width get
      FontDict /height get
    ] def
    /FontMatrix FontDict /mtx get def
    /Encoding StandardEncoding def
    /FontType 3 def
    /BuildChar { %def
      pop begin
      FontDict begin
        width 0 cache { %ifelse
          0 0 width height setcachedevice
        }{ %else
          setcharwidth
        } ifelse
        0 0 moveto width 0 lineto
        width height lineto 0 height lineto
        closepath clip newpath
        gsave proc grestore
      end end
    } def
    FontDict /key get currentdict definefont
  end
} bind def

% dict patternpath -
% dict matrix patternpath -
/patternpath { %def
  dup type /dicttype eq { %ifelse
    begin FontDict /ctm get setmatrix
  }{ %else
    exch begin FontDict /ctm get setmatrix
    concat
  } ifelse
  currentdict setfont
  FontDict begin
    FontMatrix concat
    width 0 dtransform
    round width div exch round width div exch
    0 height dtransform
    round height div exch
    round height div exch
    0 0 transform round exch round exch
    ptm astore setmatrix

    pathbbox
    height div ceiling height mul 4 1 roll
    width div ceiling width mul 4 1 roll
    height div floor height mul 4 1 roll
    width div floor width mul 4 1 roll

    2 index sub height div ceiling cvi exch
    3 index sub width div ceiling cvi exch
    4 2 roll moveto

    FontMatrix ptm invertmatrix pop
    { %repeat
      gsave
        ptm concat
        dup str length idiv { %repeat
          str show
        } repeat
        dup str length mod str exch
        0 exch getinterval show
      grestore
      0 height rmoveto
    } repeat
    pop
  end end
} bind def

% dict patternfill -
% dict matrix patternfill -
/patternfill { %def
  gsave
    eoclip patternpath
  grestore
  newpath
} bind def

/img { %def
  gsave
  /imgh exch def
  /imgw exch def
  concat
  imgw imgh 8
  [imgw 0 0 imgh neg 0 imgh]
  /colorstr 768 string def
  /colorimage where {
    pop
    { currentfile colorstr readhexstring pop }
    false 3 colorimage
  }{
    /graystr 256 string def
    {
      currentfile colorstr readhexstring pop
      length 3 idiv
      dup 1 sub 0 1 3 -1 roll
      {
        graystr exch
        colorstr 1 index 3 mul get 30 mul
        colorstr 2 index 3 mul 1 add get 59 mul
        colorstr 3 index 3 mul 2 add get 11 mul
        add add 100 idiv
        put
      } for
      graystr 0 3 -1 roll getinterval
    } image
  } ifelse
  grestore
} bind def

/arrowhead {
  gsave
    [] 0 setdash
    strokeC strokeM strokeY strokeK setcmykcolor
    2 copy moveto
    4 2 roll exch 4 -1 roll exch
    sub 3 1 roll sub
    exch atan rotate dup scale
    arrowtype
    dup 0 eq {
      -1 2 rlineto 7 -2 rlineto -7 -2 rlineto
      closepath fill
    } if
    dup 1 eq {
      0 3 rlineto 9 -3 rlineto -9 -3 rlineto
      closepath fill
    } if
    dup 2 eq {
      -6 -6 rmoveto 6 6 rlineto -6 6 rlineto
      -1.4142 -1.4142 rlineto 4.5858 -4.5858 rlineto
      -4.5858 -4.5858 rlineto closepath fill
    } if
    dup 3 eq {
      -6 0 rmoveto -1 2 rlineto 7 -2 rlineto -7 -2 rlineto
      closepath fill
    } if
    dup 4 eq {
      -9 0 rmoveto 0 3 rlineto 9 -3 rlineto -9 -3 rlineto
      closepath fill
    } if
    dup 5 eq {
      currentpoint newpath 3 0 360 arc
      closepath fill
    } if
    dup 6 eq {
      2.5 2.5 rmoveto 0 -5 rlineto -5 0 rlineto 0 5 rlineto
      closepath fill
    } if
    pop
  grestore
} bind def

/setcmykcolor where { %ifelse
  pop
}{ %else
  /setcmykcolor {
     /black exch def /yellow exch def
     /magenta exch def /cyan exch def
     cyan black add dup 1 gt { pop 1 } if 1 exch sub
     magenta black add dup 1 gt { pop 1 } if 1 exch sub
     yellow black add dup 1 gt { pop 1 } if 1 exch sub
     setrgbcolor
  } bind def
} ifelse

/RE { %def
  findfont begin
  currentdict dup length dict begin
    { %forall
      1 index /FID ne { def } { pop pop } ifelse
    } forall
    /FontName exch def dup length 0 ne { %if
      /Encoding Encoding 256 array copy def
      0 exch { %forall
        dup type /nametype eq { %ifelse
          Encoding 2 index 2 index put
          pop 1 add
        }{ %else
          exch pop
        } ifelse
      } forall
    } if pop
  currentdict dup end end
  /FontName get exch definefont pop
} bind def

/spacecount { %def
  0 exch
  ( ) { %loop
    search { %ifelse
      pop 3 -1 roll 1 add 3 1 roll
    }{ pop exit } ifelse
  } loop
} bind def

/WinAnsiEncoding [
  39/quotesingle 96/grave 130/quotesinglbase/florin/quotedblbase
  /ellipsis/dagger/daggerdbl/circumflex/perthousand
  /Scaron/guilsinglleft/OE 145/quoteleft/quoteright
  /quotedblleft/quotedblright/bullet/endash/emdash
  /tilde/trademark/scaron/guilsinglright/oe/dotlessi
  159/Ydieresis 164/currency 166/brokenbar 168/dieresis/copyright
  /ordfeminine 172/logicalnot 174/registered/macron/ring
  177/plusminus/twosuperior/threesuperior/acute/mu
  183/periodcentered/cedilla/onesuperior/ordmasculine
  188/onequarter/onehalf/threequarters 192/Agrave/Aacute
  /Acircumflex/Atilde/Adieresis/Aring/AE/Ccedilla
  /Egrave/Eacute/Ecircumflex/Edieresis/Igrave/Iacute
  /Icircumflex/Idieresis/Eth/Ntilde/Ograve/Oacute
  /Ocircumflex/Otilde/Odieresis/multiply/Oslash
  /Ugrave/Uacute/Ucircumflex/Udieresis/Yacute/Thorn
  /germandbls/agrave/aacute/acircumflex/atilde/adieresis
  /aring/ae/ccedilla/egrave/eacute/ecircumflex
  /edieresis/igrave/iacute/icircumflex/idieresis
  /eth/ntilde/ograve/oacute/ocircumflex/otilde
  /odieresis/divide/oslash/ugrave/uacute/ucircumflex
  /udieresis/yacute/thorn/ydieresis
] def

/SymbolEncoding [
  32/space/exclam/universal/numbersign/existential/percent
  /ampersand/suchthat/parenleft/parenright/asteriskmath/plus
  /comma/minus/period/slash/zero/one/two/three/four/five/six
  /seven/eight/nine/colon/semicolon/less/equal/greater/question
  /congruent/Alpha/Beta/Chi/Delta/Epsilon/Phi/Gamma/Eta/Iota
  /theta1/Kappa/Lambda/Mu/Nu/Omicron/Pi/Theta/Rho/Sigma/Tau
  /Upsilon/sigma1/Omega/Xi/Psi/Zeta/bracketleft/therefore
  /bracketright/perpendicular/underscore/radicalex/alpha
  /beta/chi/delta/epsilon/phi/gamma/eta/iota/phi1/kappa/lambda
  /mu/nu/omicron/pi/theta/rho/sigma/tau/upsilon/omega1/omega
  /xi/psi/zeta/braceleft/bar/braceright/similar
  161/Upsilon1/minute/lessequal/fraction/infinity/florin/club
  /diamond/heart/spade/arrowboth/arrowleft/arrowup/arrowright
  /arrowdown/degree/plusminus/second/greaterequal/multiply
  /proportional/partialdiff/bullet/divide/notequal/equivalence
  /approxequal/ellipsis/arrowvertex/arrowhorizex/carriagereturn
  /aleph/Ifraktur/Rfraktur/weierstrass/circlemultiply
  /circleplus/emptyset/intersection/union/propersuperset
  /reflexsuperset/notsubset/propersubset/reflexsubset/element
  /notelement/angle/gradient/registerserif/copyrightserif
  /trademarkserif/product/radical/dotmath/logicalnot/logicaland
  /logicalor/arrowdblboth/arrowdblleft/arrowdblup/arrowdblright
  /arrowdbldown/lozenge/angleleft/registersans/copyrightsans
  /trademarksans/summation/parenlefttp/parenleftex/parenleftbt
  /bracketlefttp/bracketleftex/bracketleftbt/bracelefttp
  /braceleftmid/braceleftbt/braceex
  241/angleright/integral/integraltp/integralex/integralbt
  /parenrighttp/parenrightex/parenrightbt/bracketrighttp
  /bracketrightex/bracketrightbt/bracerighttp/bracerightmid
  /bracerightbt
] def

/patarray [
/leftdiagonal /rightdiagonal /crossdiagonal /horizontal
/vertical /crosshatch /fishscale /wave /brick
] def
/arrowtype 0 def
/fillC 0 def /fillM 0 def /fillY 0 def /fillK 0 def
/strokeC 0 def /strokeM 0 def /strokeY 0 def /strokeK 1 def
/pattern -1 def
/mat matrix def
/mat2 matrix def
/nesting 0 def
/deferred /N def
/c /curveto load def
/c2 { pop pop c } bind def
/C /curveto load def
/C2 { pop pop C } bind def
/e { gsave concat 0 0 moveto } bind def
/F {
  nesting 0 eq { %ifelse
    pattern -1 eq { %ifelse
      fillC fillM fillY fillK setcmykcolor eofill
    }{ %else
      gsave fillC fillM fillY fillK setcmykcolor eofill grestore
      0 0 0 1 setcmykcolor
      patarray pattern get findfont patternfill
    } ifelse
  }{ %else
    /deferred /F def
  } ifelse
} bind def
/f { closepath F } bind def
/K { /strokeK exch def /strokeY exch def
     /strokeM exch def /strokeC exch def } bind def
/k { /fillK exch def /fillY exch def
     /fillM exch def /fillC exch def } bind def
/opc { pop } bind def
/Opc { pop } bind def
/L /lineto load def
/L2 { pop pop L } bind def
/m /moveto load def
/m2 { pop pop m } bind def
/n /newpath load def
/N {
  nesting 0 eq { %ifelse
    newpath
  }{ %else
    /deferred /N def
  } ifelse
} def
/S {
  nesting 0 eq { %ifelse
    strokeC strokeM strokeY strokeK setcmykcolor stroke
  }{ %else
    /deferred /S def
  } ifelse
} bind def
/s { closepath S } bind def
/Tx { fillC fillM fillY fillK setcmykcolor show
      0 leading neg translate 0 0 moveto } bind def
/T { grestore } bind def
/TX { pop } bind def
/Ts { pop } bind def
/tal { pop } bind def
/tld { pop } bind def
/tbx { pop exch pop sub /jwidth exch def } def
/tpt { %def
  fillC fillM fillY fillK setcmykcolor
  moveto show
} bind def
/tpj { %def
  fillC fillM fillY fillK setcmykcolor
  moveto
  dup stringwidth pop
  3 -1 roll
  exch sub
  1 index spacecount
  dup 0 eq { %ifelse
    pop pop show
  }{ %else
    div 0 8#040 4 -1 roll widthshow
  } ifelse
} bind def
/u {} def
/U {} def
/*u { /nesting nesting 1 add def } def
/*U {
  /nesting nesting 1 sub def
  nesting 0 eq {
    deferred cvx exec
  } if
} def
/w /setlinewidth load def
/d /setdash load def
/B {
  nesting 0 eq { %ifelse
    gsave F grestore S
  }{ %else
    /deferred /B def
  } ifelse
} bind def
/b { closepath B } bind def
/z { /align exch def pop /leading exch def exch findfont
     exch scalefont setfont } bind def
/tfn { exch findfont
     exch scalefont setfont } bind def
/Pat { /pattern exch def } bind def
/cm { 6 array astore concat } bind def
/q { mat2 currentmatrix pop } bind def
/Q { mat2 setmatrix } bind def
/Ah {
  pop /arrowtype exch def
  currentlinewidth 5 1 roll arrowhead
} bind def
/Arc {
  mat currentmatrix pop
    translate scale 0 0 1 5 -2 roll arc
  mat setmatrix
} bind def
/Arc2 { pop pop Arc } bind def
/Bx {
  mat currentmatrix pop
    concat /y1 exch def /x1 exch def /y2 exch def /x2 exch def
    x1 y1 moveto x1 y2 lineto x2 y2 lineto x2 y1 lineto
  mat setmatrix
} bind def
/Rr {
  mat currentmatrix pop
    concat /yrad exch def /xrad exch def
    2 copy gt { exch } if /x2 exch def /x1 exch def
    2 copy gt { exch } if /y2 exch def /y1 exch def
    x1 xrad add y2 moveto
    matrix currentmatrix x1 xrad add y2 yrad sub translate xrad yrad scale
    0 0 1 90 -180 arc setmatrix
    matrix currentmatrix x1 xrad add y1 yrad add translate xrad yrad scale
    0 0 1 180 270 arc setmatrix
    matrix currentmatrix x2 xrad sub y1 yrad add translate xrad yrad scale
    0 0 1 270 0 arc setmatrix
    matrix currentmatrix x2 xrad sub y2 yrad sub translate xrad yrad scale
    0 0 1 0 90 arc setmatrix
    closepath
  mat setmatrix
} bind def
/Ov {
  mat currentmatrix pop
    concat translate scale 1 0 moveto 0 0 1 0 360 arc closepath
  mat setmatrix
} bind def
end
%%EndResource
%%EndProlog
%%BeginSetup
%PDX g 3 3 0 0
%%IncludeFont: ArialMT
PDXDict begin
%%EndSetup
%%Page: 1 1
%%BeginPageSetup
/_PDX_savepage save def

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 15 7.5 lineto
  0 7.5 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/rightdiagonal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 0 7.5 lineto
  15 7.5 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/leftdiagonal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 15 7.5 lineto
  2 setlinewidth stroke
} bind
/horizontal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/vertical true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 15 7.5 lineto
  7.5 0 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/crosshatch true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 30 7.5 lineto
  0 22.5 moveto 30 22.5 lineto
  7.5 0 moveto 7.5 7.5 lineto
  7.5 22.5 moveto 7.5 30 lineto
  22.5 7.5 moveto 22.5 22.5 lineto
  1 setlinewidth stroke
} bind
/brick true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 2 scale
  2 setlinecap
  7.5 0 moveto 15 7.5 lineto
  0 7.5 moveto 7.5 15 lineto
  7.5 0 moveto 0 7.5 lineto
  15 7.5 moveto 7.5 15 lineto
  0.5 setlinewidth stroke
} bind
/crossdiagonal true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 2 scale
  1 setlinecap
  0 7.5 moveto 0 15 7.5 270 360 arc
  7.5 15 moveto 15 15 7.5 180 270 arc
  0 7.5 moveto 7.5 7.5 7.5 180 360 arc
  0.5 setlinewidth stroke
} bind
/fishscale true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  1 setlinecap 0.5 setlinewidth
  7.5 0 10.6 135 45 arcn
  22.5 15 10.6 225 315 arc
  stroke
  7.5 15 10.6 135 45 arcn
  22.5 30 10.6 225 315 arc
  stroke
} bind
/wave true definepattern pop

WinAnsiEncoding /_ArialMT /ArialMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
108 142 moveto 108 707 lineto 461 707 lineto 461 142 lineto closepath clip
newpath
%%EndPageSetup
0.6 -1.42109e-016 0.6 0 k
0.5 w
40.4987 16.8038 289.879 739.306 [1 0 0 1 0 -58.31] Ov
b
[1 0 0 1 -11.77 -45.56] e
281.974 738.851 281.974 738.851 tbx
0 tal
11 tld
1 1 1 0 k
/_ArialMT 10 tfn
(Sumulation) 281.974 729.801 tpt
(\r) TX
(Starts) 281.974 718.801 tpt
T
-1.42109e-016 0.4 0.6 0 k
327.988 651.65 252.418 687.917 [1 0 -0.5 1 338.3 -48.84] Bx
b
402.409 660.997 325.282 696.855 [1 0 0 1 -69.08 -120.6] Bx
b
0.6 -1.42109e-016 -1.42109e-016 0 k
216.875 490.697 134.271 526.348 [1 0 0 1 10.43 -17.2] Bx
b
-1.42109e-016 0.8 0.6 0 k
216.875 490.697 134.271 526.348 [1 0 0 1 234.8 -17.64] Bx
b
0.6 -1.42109e-016 -1.42109e-016 0 k
q
1 0 0 1 -0.6942 -35.4 cm
292.463 677.685 292.463 673.685 m2
292.463 697.981 L
Q
B
q
1 0 0 1 -0.6942 -35.4 cm
292.463 697.981 292.463 673.685 4 1 Ah
Q
q
1 0 0 1 1.041 -96.14 cm
292.463 677.685 292.463 673.685 m2
292.463 697.981 L
Q
B
q
1 0 0 1 1.041 -96.14 cm
292.463 697.981 292.463 673.685 4 1 Ah
Q
q
1 0 0 1 -105.9 -164 cm
292.391 677.684 292.463 673.685 m2
292.116 692.775 L
Q
B
q
1 0 0 1 -105.9 -164 cm
292.116 692.775 292.463 673.685 4 1 Ah
Q
q
1 0 0 1 120.5 -164.9 cm
292.391 677.684 292.463 673.685 m2
292.116 692.775 L
Q
B
q
1 0 0 1 120.5 -164.9 cm
292.116 692.775 292.463 673.685 4 1 Ah
Q
q
1 0 0 1 0 0 cm
186.253 528.052 m
413.252 528.052 L
Q
B
q
1 0 0 1 0 0 cm
293.852 539.854 m
293.852 528.052 L
Q
B
151.332 432.597 88.8556 454.116 [1 0 0 1 29.16 -0.6942] Bx
b
151.332 432.597 88.8556 454.116 [1 0 0 1 126 -0.3471] Bx
b
151.332 432.597 88.8556 454.116 [1 0 0 1 28.81 -42] Bx
b
q
1 0 0 1 2.777 0 cm
146.473 431.951 m
146.473 415.82 146.473 411.82 L2
Q
B
q
1 0 0 1 2.777 0 cm
146.473 431.951 146.473 411.82 4 2 Ah
Q
q
1 0 0 1 0 0 cm
149.25 472.908 m
149.25 456.777 149.25 452.777 L2
Q
B
q
1 0 0 1 0 0 cm
149.25 472.908 149.25 452.777 4 2 Ah
Q
q
1 0 0 1 1.388 0 cm
195.066 473.602 m
195.066 444.447 L
Q
B
q
1 0 0 1 -18.05 0 cm
228.552 444.447 232.552 444.447 m2
215.197 444.447 L
Q
B
q
1 0 0 1 -18.05 0 cm
215.197 444.447 232.552 444.447 4 1 Ah
Q
-1.42109e-016 0.4 0.6 0 k
402.409 660.997 325.282 696.855 [1 0 0 1 -69.16 -328.2] Bx
b
402.409 660.997 325.282 696.855 [1 0 0 1 -69.16 -387.8] Bx
b
402.409 660.997 325.282 696.855 [1 0 0 1 -69.16 -446.6] Bx
b
-1.42109e-016 0.8 0.6 0 k
q
1 0 0 1 0 -8.33 cm
148.556 357.174 m
252.46 357.174 255.46 357.174 L2
Q
B
q
1 0 0 1 0 -8.33 cm
148.556 357.174 255.46 357.174 3 2 Ah
Q
q
1 0 0 1 -0.6942 -0.6942 cm
149.25 391.189 m
149.25 349.538 L
Q
B
q
1 0 0 1 0 0 cm
240.882 432.146 m
240.882 348.15 L
Q
B
q
1 0 0 1 0 0 cm
413.04 472.409 m
413.04 432.146 L
Q
B
q
1 0 0 1 0 0 cm
413.04 432.146 m
297.805 432.146 L
Q
B
q
1 0 0 1 0 0 cm
297.805 432.146 m
297.805 371.587 297.805 367.587 L2
Q
B
q
1 0 0 1 0 0 cm
297.805 432.146 297.805 367.587 4 2 Ah
Q
q
1 0 0 1 0 0 cm
297.805 332.927 m
297.805 310.936 297.805 307.936 L2
Q
B
q
1 0 0 1 0 0 cm
297.805 332.927 297.805 307.936 3 2 Ah
Q
q
1 0 0 1 0 0 cm
297.805 272.533 m
297.805 253.625 297.805 249.625 L2
Q
B
q
1 0 0 1 0 0 cm
297.805 272.533 297.805 249.625 4 2 Ah
Q
0.6 -1.42109e-016 0.6 0 k
339.466 652.38 252.418 687.917 [1 0 -0.5 1 342.8 -500.2] Bx
b
[1 0 0 1 1.388 -50.68] e
265.179 688.214 265.179 688.214 tbx
0 tal
11 tld
1 1 1 0 k
/_ArialMT 10 tfn
(IPCC) 265.179 679.164 tpt
(\r) TX
(Atmospheric) 265.179 668.164 tpt
(\r) TX
(Carbon Model) 265.179 657.164 tpt
T
[1 0 0 1 0.6942 -56.23] e
263.79 625.141 263.79 625.141 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(EdGCM Temp.) 263.79 616.091 tpt
(\r) TX
(Projections) 263.79 605.091 tpt
T
[1 0 0 1 0.6942 7.636] e
152.026 500.187 152.026 500.187 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Greenland Ice) 152.026 491.137 tpt
(\r) TX
(Sheet Mass) 152.026 480.137 tpt
(\r) TX
(Balance) 152.026 469.137 tpt
T
[1 0 0 1 -0.6942 5.553] e
125.647 441.475 125.647 441.475 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Sublimation) 125.647 432.425 tpt
T
[1 0 0 1 6.942 7.636] e
124.953 400.566 124.953 400.566 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Melting) 124.953 391.516 tpt
T
[1 0 0 1 -9.024 8.33] e
225.61 440.829 225.61 440.829 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Accumulation) 225.61 431.779 tpt
T
[1 0 0 1 7.636 4.859] e
383.19 497.801 383.19 497.801 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Thermal) 383.19 488.751 tpt
(\r) TX
(Expansion) 383.19 477.751 tpt
T
[1 0 0 1 3.471 7.636] e
276.285 355.287 276.285 355.287 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Local) 276.285 346.237 tpt
(\r) TX
(Trending) 276.285 335.237 tpt
T
[1 0 0 1 -4.165 6.248] e
264.484 290.034 264.484 290.034 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Sea Level Rase) 264.484 280.984 tpt
T
[1 0 0 1 6.248 8.33] e
263.79 234.499 263.79 234.499 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Submersion) 263.79 225.449 tpt
(\r) TX
(Simulation) 263.79 214.449 tpt
T
q
1 0 0 1 0 0 cm
296.417 213.771 m
296.417 192.086 296.417 188.086 L2
Q
B
q
1 0 0 1 0 0 cm
296.417 213.771 296.417 188.086 4 2 Ah
Q
[1 0 0 1 -4.859 0] e
267.955 176.431 267.955 176.431 tbx
0 tal
11 tld
/_ArialMT 10 tfn
(Recommendations) 267.955 167.381 tpt
T
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
