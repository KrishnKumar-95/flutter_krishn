import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.green,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ));
  //colors    403b58
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff191970);
  static Color lightBluishColor = Vx.indigo500;
}

// There are RGB color codes with their color names for different color selection

// Black	0xff000000	(0,0,0)
// White	0xffFFFFFF	(255,255,255)
// Red	0xffFF0000	(255,0,0)
// Lime	0xff00FF00	(0,255,0)
// Blue	0xff0000FF	(0,0,255)
// Yellow	0xffFFFF00	(255,255,0)
// Cyan / Aqua	0xff00FFFF	(0,255,255)
// Magenta / Fuchsia	0xffFF00FF	(255,0,255)
// Silver	0xffC0C0C0	(192,192,192)
// Gray	0xff808080	(128,128,128)
// Maroon	0xff800000	(128,0,0)
// Olive	0xff808000	(128,128,0)
// Green	0xff008000	(0,128,0)
// Purple	0xff800080	(128,0,128)
// Teal	0xff008080	(0,128,128)
// Navy	#000080	(0,0,128)

// maroon	0xff800000	(128,0,0)
// dark red	0xff8B0000	(139,0,0)
// brown	0xffA52A2A	(165,42,42)
// firebrick	0xffB22222	(178,34,34)
// crimson	0xffDC143C	(220,20,60)
// red	0xffFF0000	(255,0,0)
// tomato	0xffFF6347	(255,99,71)
// coral	0xffFF7F50	(255,127,80)
// indian red	0xffCD5C5C	(205,92,92)
// light coral	0xffF08080	(240,128,128)
// dark salmon	0xffE9967A	(233,150,122)
// salmon	0xffFA8072	(250,128,114)
// light salmon	0xffFFA07A	(255,160,122)
// orange red	0xffFF4500	(255,69,0)
// dark orange	0xffFF8C00	(255,140,0)
// orange	0xffFFA500	(255,165,0)
// gold	0xffFFD700	(255,215,0)
// dark golden rod	0xffB8860B	(184,134,11)
// golden rod	0xffDAA520	(218,165,32)
// pale golden rod	0xffEEE8AA	(238,232,170)
// dark khaki	0xffBDB76B	(189,183,107)
// khaki	0xffF0E68C	(240,230,140)
// olive	0xff808000	(128,128,0)
// yellow	0xffFFFF00	(255,255,0)
// yellow green	0xff9ACD32	(154,205,50)
// dark olive green	0xff556B2F	(85,107,47)
// olive drab	0xff6B8E23	(107,142,35)
// lawn green	0xff7CFC00	(124,252,0)
// chart reuse	0xff7FFF00	(127,255,0)
// green yellow	0xffADFF2F	(173,255,47)
// dark green	0xff006400	(0,100,0)
// green	0xff008000	(0,128,0)
// forest green	0xff228B22	(34,139,34)
// lime	0xff00FF00	(0,255,0)
// lime green	0xff32CD32	(50,205,50)
// light green	0xff90EE90	(144,238,144)
// pale green	0xff98FB98	(152,251,152)
// dark sea green	0xff8FBC8F	(143,188,143)
// medium spring green	0xff00FA9A	(0,250,154)
// spring green	0xff00FF7F	(0,255,127)
// sea green	0xff2E8B57	(46,139,87)
// medium aqua marine	0xff66CDAA	(102,205,170)
// medium sea green	0xff3CB371	(60,179,113)
// light sea green	0xff20B2AA	(32,178,170)
// dark slate gray	0xff2F4F4F	(47,79,79)
// teal	0xff008080	(0,128,128)
// dark cyan	0xff008B8B	(0,139,139)
// aqua	0xff00FFFF	(0,255,255)
// cyan	0xff00FFFF	(0,255,255)
// light cyan	0xffE0FFFF	(224,255,255)
// dark turquoise	0xff00CED1	(0,206,209)
// turquoise	0xff40E0D0	(64,224,208)
// medium turquoise	0xff48D1CC	(72,209,204)
// pale turquoise	0xffAFEEEE	(175,238,238)
// aqua marine	0xff7FFFD4	(127,255,212)
// powder blue	0xffB0E0E6	(176,224,230)
// cadet blue	0xff5F9EA0	(95,158,160)
// steel blue	0xff4682B4	(70,130,180)
// corn flower blue	0xff6495ED	(100,149,237)
// deep sky blue	0xff00BFFF	(0,191,255)
// dodger blue	0xff1E90FF	(30,144,255)
// light blue	0xffADD8E6	(173,216,230)
// sky blue	0xff87CEEB	(135,206,235)
// light sky blue	0xff87CEFA	(135,206,250)
// midnight blue	0xff191970	(25,25,112)
// navy	0xff000080	(0,0,128)
// dark blue	0xff00008B	(0,0,139)
// medium blue	0xff0000CD	(0,0,205)
// blue	0xff0000FF	(0,0,255)
// royal blue	0xff4169E1	(65,105,225)
// blue violet	0xff8A2BE2	(138,43,226)
// indigo	0xff4B0082	(75,0,130)
// dark slate blue	0xff483D8B	(72,61,139)
// slate blue	0xff6A5ACD	(106,90,205)
// medium slate blue	0xff7B68EE	(123,104,238)
// medium purple	0xff9370DB	(147,112,219)
// dark magenta	0xff8B008B	(139,0,139)
// dark violet	0xff9400D3	(148,0,211)
// dark orchid	0xff9932CC	(153,50,204)
// medium orchid	0xffBA55D3	(186,85,211)
// purple	0xff800080	(128,0,128)
// thistle	0xffD8BFD8	(216,191,216)
// plum	0xffDDA0DD	(221,160,221)
// violet	0xffEE82EE	(238,130,238)
// magenta / fuchsia	0xffFF00FF	(255,0,255)
// orchid	0xffDA70D6	(218,112,214)
// medium violet red	0xffC71585	(199,21,133)
// pale violet red	0xffDB7093	(219,112,147)
// deep pink	0xffFF1493	(255,20,147)
// hot pink	0xffFF69B4	(255,105,180)
// light pink	0xffFFB6C1	(255,182,193)
// pink	0xffFFC0CB	(255,192,203)
// antique white	0xffFAEBD7	(250,235,215)
// beige	0xffF5F5DC	(245,245,220)
// bisque	0xffFFE4C4	(255,228,196)
// blanched almond	0xffFFEBCD	(255,235,205)
// wheat	0xffF5DEB3	(245,222,179)
// corn silk	0xffFFF8DC	(255,248,220)
// lemon chiffon	0xffFFFACD	(255,250,205)
// light golden rod yellow	0xffFAFAD2	(250,250,210)
// light yellow	0xffFFFFE0	(255,255,224)
// saddle brown	0xff8B4513	(139,69,19)
// sienna	0xffA0522D	(160,82,45)
// chocolate	0xffD2691E	(210,105,30)
// peru	0xffCD853F	(205,133,63)
// sandy brown	0xffF4A460	(244,164,96)
// burly wood	0xffDEB887	(222,184,135)
// tan	0xffD2B48C	(210,180,140)
// rosy brown	0xffBC8F8F	(188,143,143)
// moccasin	0xffFFE4B5	(255,228,181)
// navajo white	0xffFFDEAD	(255,222,173)
// peach puff	0xffFFDAB9	(255,218,185)
// misty rose	0xffFFE4E1	(255,228,225)
// lavender blush	0xffFFF0F5	(255,240,245)
// linen	0xffFAF0E6	(250,240,230)
// old lace	0xffFDF5E6	(253,245,230)
// papaya whip	0xffFFEFD5	(255,239,213)
// sea shell	0xffFFF5EE	(255,245,238)
// mint cream	0xffF5FFFA	(245,255,250)
// slate gray	0xff708090	(112,128,144)
// light slate gray	0xff778899	(119,136,153)
// light steel blue	0xffB0C4DE	(176,196,222)
// lavender	0xffE6E6FA	(230,230,250)
// floral white	0xffFFFAF0	(255,250,240)
// alice blue	0xffF0F8FF	(240,248,255)
// ghost white	0xffF8F8FF	(248,248,255)
// honeydew	0xffF0FFF0	(240,255,240)
// ivory	0xffFFFFF0	(255,255,240)
// azure	0xffF0FFFF	(240,255,255)
// snow	0xffFFFAFA	(255,250,250)
// black	0xff000000	(0,0,0)
// dim gray / dim grey	0xff696969	(105,105,105)
// gray / grey	0xff808080	(128,128,128)
// dark gray / dark grey	0xffA9A9A9	(169,169,169)
// silver	0xffC0C0C0	(192,192,192)
// light gray / light grey	0xffD3D3D3	(211,211,211)
// gainsboro	0xffDCDCDC	(220,220,220)
// white smoke	0xffF5F5F5	(245,245,245)
// white	0xffFFFFFF	(255,255,255)
