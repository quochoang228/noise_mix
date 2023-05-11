import 'package:flutter/material.dart';

/// Defines the color palette for the App UI Kit.
abstract class AppColors {
  static Color? hexColor(String colorCode) {
    var color = colorCode.toUpperCase().replaceAll("#", "");
    if (color.length == 6) {
      color = "FF$color";
    }
    if (color.length == 8) {
      try {
        return Color(int.parse("0x$color"));
      } catch (_) {}
    }
    return null;
  }

  /// ----------------------New Design------------------------\\\
  // Base
  static const vBackGroundColorButtonNormal = Color(0xffEE0033);
  static const vTextColorButtonNormal = Color(0xffFFFFFF);
  static const vTransparent = Colors.transparent;

  // Brand
  static const vBrandColorRed = Color(0xffEE0033);
  static const vBrandColorRed50 = Color(0x80EE0033);
  static const vBrandColorRed30 = Color(0x4dEE0033);
  static const vBrandColorRed10 = Color(0x1aEE0033);
  static const vBrandColorWhite = Color(0xffFFFFFF);

  // Secondary
  static const vSecondaryColorGreen = Color(0xff2DB2A2);
  static const vSecondaryColorBlue = Color(0xff007AFF);
  static const vSecondaryColorOrange = Color(0xffFF5D02);

  // Neutral
  static const vNeutralColor1 = Color(0xff000000);
  static const vNeutralColor2 = Color(0xff44494D);
  static const vNeutralColor25 = Color(0xff82878B);
  static const vNeutralColor3 = Color(0xffB5B4B4);
  static const vNeutralColor35 = Color(0xffD3D2D2);
  static const vNeutralColor4 = Color(0xffF2F2F2);
  static const vNeutralColor45 = Color(0xffF6F6F6);
  static const vNeutralColor352 = Color(0xffD7D6D6);
  static const vNeutralColor55 = Color(0xffF5F5F5);

  // Yellow
  static const vYellowColor600 = Color(0xffFFBA0A);
  static const vYellowColor500 = Color(0xffFFD60A);
  static const vYellowColor400 = Color(0xffFEE440);

  // Ink
  static const vInk500 = Color(0xff22313F); // rgb(34, 49, 63)
  static const vInk400 = Color.fromRGBO(1, 18, 34, 0.5); // #0112227F
  static const vInk300 = Color.fromRGBO(1, 18, 34, 0.3); // #0112224C
  static const vInk200 = Color.fromRGBO(1, 18, 34, 0.1); // #01122219
  static const vInk100 = Color.fromRGBO(1, 18, 34, 0.05); // #0112220C
  // Black
  static const vBlack = Color.fromRGBO(0, 0, 0, 1);
  static const vBlack500 = Color.fromRGBO(0, 0, 0, 0.8); // #000000CC
  static const vBlack400 = Color.fromRGBO(0, 0, 0, 0.7); // #000000B2
  static const vBlack300 = Color.fromRGBO(0, 0, 0, 0.4); // #00000066
  static const vBlack200 = Color.fromRGBO(0, 0, 0, 0.3); // #0000004C
  static const vBlack100 = Color.fromRGBO(0, 0, 0, 0.1); // #00000019
  // White
  static const vWhite = Color.fromRGBO(255, 255, 255, 1); // #FFFFFF
  static const vWhite500 = Color.fromRGBO(255, 255, 255, 1); // #FFFFFF
  static const vWhite400 = Color.fromRGBO(255, 255, 255, 0.7); // #FFFFFFB2
  static const vWhite300 = Color.fromRGBO(255, 255, 255, 0.4); // #FFFFFF66
  static const vWhite200 = Color.fromRGBO(255, 255, 255, 0.3); // #FFFFFF4C
  static const vWhite100 = Color.fromRGBO(255, 255, 255, 0.1); // #FFFFFF19

  static const vWhiteBox = Color(0xfff6f6f6);
  static const vWhiteBorder = Color(0xffdad9d9);
  static const vhintText = Color(0xffB5B4B4);
  static const vlabelText = Color(0xff44494D);
  static const vIcon = Color(0xff82878B);
  static const vBlackText = Color(0xff000000);

  /// Functional Color Palette
  // -- Blue - Emotions [Useful]: display information content.
  static const vBlue500 = Color.fromRGBO(47, 107, 255, 1); // #2F6BFF
  static const vBlue400 = Color.fromRGBO(47, 107, 255, 0.8); // #2F6BFFCC
  static const vBlue300 = Color.fromRGBO(47, 107, 255, 0.3); // #2F6BFF4C
  static const vBlue200 = Color.fromRGBO(47, 107, 255, 0.1); // #2F6BFF19
  static const vBlue100 = Color.fromRGBO(47, 107, 255, 0.05); // #2F6BFF0C
  static const vSignatureStroke = Color(0xff0039CD);
  // -- Green - Emotion [Positive]: display successful content.
  static const vGreen500 = Color.fromRGBO(0, 188, 60, 1); // #00BC3C
  static const vGreen400 = Color.fromRGBO(0, 188, 60, 0.8); // #00BC3CCC
  static const vGreen300 = Color.fromRGBO(0, 188, 60, 0.3); // #00BC3C4C
  static const vGreen200 = Color.fromRGBO(0, 188, 60, 0.1); // #00BC3C19
  static const vGreen100 = Color.fromRGBO(0, 188, 60, 0.05); // #00BC3C0C
  // -- Orange - Emotion [Careful]: display successful content.
  static const vOrange500 = Color.fromRGBO(255, 130, 30, 1); // #FF821E
  static const vOrange400 = Color.fromRGBO(255, 130, 30, 0.8); // #FF821ECC
  static const vOrange300 = Color.fromRGBO(255, 130, 30, 0.3); // #FF821E4C
  static const vOrange200 = Color.fromRGBO(255, 130, 30, 0.1); // #FF821E19
  static const vOrange100 = Color.fromRGBO(255, 130, 30, 0.05); // #FF821E0C
  // -- Red - Emotion [Stressful]: display successful content.
  static const vRed500 = Color.fromRGBO(230, 10, 50, 1); // #E60A32
  static const vRed400 = Color.fromRGBO(230, 10, 50, 0.8); // #E60A32CC
  static const vRed300 = Color.fromRGBO(230, 10, 50, 0.3); // #E60A324C
  static const vRed200 = Color.fromRGBO(230, 10, 50, 0.1); // #E60A3219
  static const vRed100 = Color.fromRGBO(230, 10, 50, 0.05); // #E60A320C
  static const vBrandRed05 = Color.fromRGBO(238, 0, 51, 0.05);

  /// Support Color
  static const vBackGroundLight = Color.fromRGBO(250, 253, 255, 1); // #FAFDFF
  static const vBackGroundDark = Color.fromRGBO(242, 243, 244, 1); // #F2F3F4
  static const vPlaceholder = Color.fromRGBO(232, 237, 243, 1); // #E8EDF3

  // linear-gradient(rgba(230, 231, 233, 1.0) 0%, rgba(249, 249, 249, 1.0) 100%)
  static const vSkeletonStart = Color.fromRGBO(230, 231, 233, 1);
  static const vSkeletonEnd = Color.fromRGBO(249, 249, 249, 1);

  // linear-gradient(rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0) 100%)
  static const vGradient50TopStart = Color.fromRGBO(0, 0, 0, 0.5);
  static const vGradient50TopEnd = Color.fromRGBO(0, 0, 0, 0);

  // linear-gradient(rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.5) 100%)
  static const vGradient50BotStart = Color.fromRGBO(0, 0, 0, 0);
  static const vGradient50BotEnd = Color.fromRGBO(0, 0, 0, 0.5);

  //0.0px 2.0px 4.0px 0px rgba(1, 18, 34, 0.1)
  static const vShadow = Color.fromRGBO(1, 18, 34, 0.1);

  static const vSnackMessage = Color(0xff22313F);


    /// border :-------------------------------------
  static const vBorderNormal = Color(0xffEBF0FF);

  /// ----------------------New Design------------------------\\\
  static const vBgPrimary = Color.fromRGBO(0xe9, 0xe9, 0xe9 , 1);
  static const vNeutral40 = Color.fromRGBO(0xF2, 0xF2, 0xF2, 1);
  static const vNeutral35 = Color.fromRGBO(0xDA, 0xD9, 0xD9, 1);
  static const vBgTime = Color(0xF2F2F2FF);

  // color of status order
  static const vOrderWaiting = Color.fromRGBO(255, 0x5d, 0x02, 1);
  static const vOrderConfirm = Color.fromRGBO(0, 0x7a, 255, 1);
  static const vOrderSuccess = Color.fromRGBO(0x2d, 0xb2, 0xa2, 1);

  // color of vertical divider
 static const vVerticalDivider = Color.fromRGBO(218, 217, 217, 1);

 static const vBackGroundProductLevel1 =  Color.fromRGBO(255, 93, 2, 0.1);
 static const vBlackTextDiscount = Color.fromRGBO(32, 28, 28, 1);

  //  color for chat
  static const vBlueChatBorder = Color.fromRGBO(88, 154, 254, 1);
  static const vBlueChatBackground = Color.fromRGBO(65, 140, 255, 1);

}

//  --chakra-ring-inset: var(--chakra-empty,/*!*/ /*!*/);
//                     --chakra-ring-offset-width: 0px;
//                     --chakra-ring-offset-color: #fff;
//                     --chakra-ring-color: rgba(66, 153, 225, 0.6);
//                     --chakra-ring-offset-shadow: 0 0 #0000;
//                     --chakra-ring-shadow: 0 0 #0000;
//                     --chakra-space-x-reverse: 0;
//                     --chakra-space-y-reverse: 0;
//                     --chakra-colors-transparent: transparent;
//                     --chakra-colors-current: currentColor;
//                     --chakra-colors-black: #2B2B2B;
//                     --chakra-colors-white: #fff;
//                     --chakra-colors-whiteAlpha-50: rgba(255, 255, 255, 0.04);
//                     --chakra-colors-whiteAlpha-100: rgba(255, 255, 255, 0.06);
//                     --chakra-colors-whiteAlpha-200: rgba(255, 255, 255, 0.08);
//                     --chakra-colors-whiteAlpha-300: rgba(255, 255, 255, 0.16);
//                     --chakra-colors-whiteAlpha-400: rgba(255, 255, 255, 0.24);
//                     --chakra-colors-whiteAlpha-500: rgba(255, 255, 255, 0.36);
//                     --chakra-colors-whiteAlpha-600: rgba(255, 255, 255, 0.48);
//                     --chakra-colors-whiteAlpha-700: rgba(255, 255, 255, 0.64);
//                     --chakra-colors-whiteAlpha-800: rgba(255, 255, 255, 0.80);
//                     --chakra-colors-whiteAlpha-900: rgba(255, 255, 255, 0.92);
//                     --chakra-colors-blackAlpha-50: rgba(0, 0, 0, 0.04);
//                     --chakra-colors-blackAlpha-100: rgba(0, 0, 0, 0.06);
//                     --chakra-colors-blackAlpha-200: rgba(0, 0, 0, 0.08);
//                     --chakra-colors-blackAlpha-300: rgba(0, 0, 0, 0.16);
//                     --chakra-colors-blackAlpha-400: rgba(0, 0, 0, 0.24);
//                     --chakra-colors-blackAlpha-500: rgba(0, 0, 0, 0.36);
//                     --chakra-colors-blackAlpha-600: rgba(0, 0, 0, 0.48);
//                     --chakra-colors-blackAlpha-700: rgba(0, 0, 0, 0.64);
//                     --chakra-colors-blackAlpha-800: rgba(0, 0, 0, 0.80);
//                     --chakra-colors-blackAlpha-900: rgba(0, 0, 0, 0.92);
//                     --chakra-colors-gray-50: #F8F9FA;
//                     --chakra-colors-gray-100: #F1F3F5;
//                     --chakra-colors-gray-200: #E9ECEF;
//                     --chakra-colors-gray-300: #DEE2E6;
//                     --chakra-colors-gray-400: #CED4DA;
//                     --chakra-colors-gray-500: #ADB5BD;
//                     --chakra-colors-gray-600: #868E96;
//                     --chakra-colors-gray-700: #495057;
//                     --chakra-colors-gray-800: #343A40;
//                     --chakra-colors-gray-900: #0D131B;
//                     --chakra-colors-red-50: #fff5f5;
//                     --chakra-colors-red-100: #fed7d7;
//                     --chakra-colors-red-200: #feb2b2;
//                     --chakra-colors-red-300: #fc8181;
//                     --chakra-colors-red-400: #f56565;
//                     --chakra-colors-red-500: #e53e3e;
//                     --chakra-colors-red-600: #c53030;
//                     --chakra-colors-red-700: #9b2c2c;
//                     --chakra-colors-red-800: #822727;
//                     --chakra-colors-red-900: #63171b;
//                     --chakra-colors-orange-50: #FEF0E0;
//                     --chakra-colors-orange-100: #FDE7CF;
//                     --chakra-colors-orange-200: #FCDFBE;
//                     --chakra-colors-orange-300: #FBD6AD;
//                     --chakra-colors-orange-400: #FACD9C;
//                     --chakra-colors-orange-500: #F8C48B;
//                     --chakra-colors-orange-600: #F6BC7B;
//                     --chakra-colors-orange-700: #F3B36B;
//                     --chakra-colors-orange-800: #F1AA5C;
//                     --chakra-colors-orange-900: #EEA14C;
//                     --chakra-colors-yellow-50: #fffff0;
//                     --chakra-colors-yellow-100: #fefcbf;
//                     --chakra-colors-yellow-200: #faf089;
//                     --chakra-colors-yellow-300: #f6e05e;
//                     --chakra-colors-yellow-400: #ecc94b;
//                     --chakra-colors-yellow-500: #d69e2e;
//                     --chakra-colors-yellow-600: #b7791f;
//                     --chakra-colors-yellow-700: #975a16;
//                     --chakra-colors-yellow-800: #744210;
//                     --chakra-colors-yellow-900: #5F370E;
//                     --chakra-colors-green-50: #f0fff4;
//                     --chakra-colors-green-100: #c6f6d5;
//                     --chakra-colors-green-200: #9ae6b4;
//                     --chakra-colors-green-300: #68d391;
//                     --chakra-colors-green-400: #48bb78;
//                     --chakra-colors-green-500: #38a169;
//                     --chakra-colors-green-600: #26A559;
//                     --chakra-colors-green-700: #276749;
//                     --chakra-colors-green-800: #22543d;
//                     --chakra-colors-green-900: #1C4532;
//                     --chakra-colors-teal-50: #E6FFFA;
//                     --chakra-colors-teal-100: #B2F5EA;
//                     --chakra-colors-teal-200: #81E6D9;
//                     --chakra-colors-teal-300: #4FD1C5;
//                     --chakra-colors-teal-400: #38B2AC;
//                     --chakra-colors-teal-500: #319795;
//                     --chakra-colors-teal-600: #2C7A7B;
//                     --chakra-colors-teal-700: #285E61;
//                     --chakra-colors-teal-800: #234E52;
//                     --chakra-colors-teal-900: #1D4044;
//                     --chakra-colors-blue-50: #ebf8ff;
//                     --chakra-colors-blue-100: #ceedff;
//                     --chakra-colors-blue-200: #90cdf4;
//                     --chakra-colors-blue-300: #63b3ed;
//                     --chakra-colors-blue-400: #4299e1;
//                     --chakra-colors-blue-500: #3182ce;
//                     --chakra-colors-blue-600: #2a69ac;
//                     --chakra-colors-blue-700: #1e4e8c;
//                     --chakra-colors-blue-800: #153e75;
//                     --chakra-colors-blue-900: #1a365d;
//                     --chakra-colors-cyan-50: #EDFDFD;
//                     --chakra-colors-cyan-100: #C4F1F9;
//                     --chakra-colors-cyan-200: #9DECF9;
//                     --chakra-colors-cyan-300: #76E4F7;
//                     --chakra-colors-cyan-400: #0BC5EA;
//                     --chakra-colors-cyan-500: #00B5D8;
//                     --chakra-colors-cyan-600: #00A3C4;
//                     --chakra-colors-cyan-700: #0987A0;
//                     --chakra-colors-cyan-800: #086F83;
//                     --chakra-colors-cyan-900: #065666;
//                     --chakra-colors-purple-50: #F0F0FE;
//                     --chakra-colors-purple-100: #E1E1FD;
//                     --chakra-colors-purple-200: #C3C3FC;
//                     --chakra-colors-purple-300: #A4A4FA;
//                     --chakra-colors-purple-400: #8686F9;
//                     --chakra-colors-purple-500: #6868F7;
//                     --chakra-colors-purple-600: #5353C6;
//                     --chakra-colors-purple-700: #3E3E94;
//                     --chakra-colors-purple-800: #2A2A63;
//                     --chakra-colors-purple-900: #151531;
//                     --chakra-colors-pink-50: #fff5f7;
//                     --chakra-colors-pink-100: #fed7e2;
//                     --chakra-colors-pink-200: #fbb6ce;
//                     --chakra-colors-pink-300: #f687b3;
//                     --chakra-colors-pink-400: #ed64a6;
//                     --chakra-colors-pink-500: #d53f8c;
//                     --chakra-colors-pink-600: #b83280;
//                     --chakra-colors-pink-700: #97266d;
//                     --chakra-colors-pink-800: #702459;
//                     --chakra-colors-pink-900: #521B41;
//                     --chakra-colors-linkedin-50: #E8F4F9;
//                     --chakra-colors-linkedin-100: #CFEDFB;
//                     --chakra-colors-linkedin-200: #9BDAF3;
//                     --chakra-colors-linkedin-300: #68C7EC;
//                     --chakra-colors-linkedin-400: #34B3E4;
//                     --chakra-colors-linkedin-500: #00A0DC;
//                     --chakra-colors-linkedin-600: #008CC9;
//                     --chakra-colors-linkedin-700: #0077B5;
//                     --chakra-colors-linkedin-800: #005E93;
//                     --chakra-colors-linkedin-900: #004471;
//                     --chakra-colors-facebook-50: #E8F4F9;
//                     --chakra-colors-facebook-100: #D9DEE9;
//                     --chakra-colors-facebook-200: #B7C2DA;
//                     --chakra-colors-facebook-300: #6482C0;
//                     --chakra-colors-facebook-400: #4267B2;
//                     --chakra-colors-facebook-500: #385898;
//                     --chakra-colors-facebook-600: #314E89;
//                     --chakra-colors-facebook-700: #29487D;
//                     --chakra-colors-facebook-800: #223B67;
//                     --chakra-colors-facebook-900: #1E355B;
//                     --chakra-colors-messenger-50: #D0E6FF;
//                     --chakra-colors-messenger-100: #B9DAFF;
//                     --chakra-colors-messenger-200: #A2CDFF;
//                     --chakra-colors-messenger-300: #7AB8FF;
//                     --chakra-colors-messenger-400: #2E90FF;
//                     --chakra-colors-messenger-500: #0078FF;
//                     --chakra-colors-messenger-600: #0063D1;
//                     --chakra-colors-messenger-700: #0052AC;
//                     --chakra-colors-messenger-800: #003C7E;
//                     --chakra-colors-messenger-900: #002C5C;
//                     --chakra-colors-whatsapp-50: #dffeec;
//                     --chakra-colors-whatsapp-100: #b9f5d0;
//                     --chakra-colors-whatsapp-200: #90edb3;
//                     --chakra-colors-whatsapp-300: #65e495;
//                     --chakra-colors-whatsapp-400: #3cdd78;
//                     --chakra-colors-whatsapp-500: #22c35e;
//                     --chakra-colors-whatsapp-600: #179848;
//                     --chakra-colors-whatsapp-700: #0c6c33;
//                     --chakra-colors-whatsapp-800: #01421c;
//                     --chakra-colors-whatsapp-900: #001803;
//                     --chakra-colors-twitter-50: #E5F4FD;
//                     --chakra-colors-twitter-100: #C8E9FB;
//                     --chakra-colors-twitter-200: #A8DCFA;
//                     --chakra-colors-twitter-300: #83CDF7;
//                     --chakra-colors-twitter-400: #57BBF5;
//                     --chakra-colors-twitter-500: #1DA1F2;
//                     --chakra-colors-twitter-600: #1A94DA;
//                     --chakra-colors-twitter-700: #1681BF;
//                     --chakra-colors-twitter-800: #136B9E;
//                     --chakra-colors-twitter-900: #0D4D71;
//                     --chakra-colors-telegram-50: #E3F2F9;
//                     --chakra-colors-telegram-100: #C5E4F3;
//                     --chakra-colors-telegram-200: #A2D4EC;
//                     --chakra-colors-telegram-300: #7AC1E4;
//                     --chakra-colors-telegram-400: #47A9DA;
//                     --chakra-colors-telegram-500: #0088CC;
//                     --chakra-colors-telegram-600: #007AB8;
//                     --chakra-colors-telegram-700: #006BA1;
//                     --chakra-colors-telegram-800: #005885;
//                     --chakra-colors-telegram-900: #003F5E;
//                     --chakra-colors-primary: #6868F7;
//                     --chakra-colors-secondary: #639;
//                     --chakra-colors-darkBlue: #302F73;
//                     --chakra-colors-tarteOrange: #DD595A;
//                     --chakra-colors-turquoise: #48A9A6;
//                     --chakra-colors-lightOrange: #DA9857;
//                     --chakra-colors-warning: #F3AE3D;
//                     --chakra-colors-primaryGradient: linear(to-b, purple.500, #4C40D9);
//                     --chakra-colors-landing-black: #000000;
//                     --chakra-colors-landing-gray: #5F5F5F;
//                     --chakra-colors-landing-grayBackground: #F7F7F8;
//                     --chakra-colors-landing-activeGray: #EFF1F5;
//                     --chakra-colors-landing-borderGray: #EAECEF;
//                     --chakra-colors-landing-almostBlack-50: #0D0DE2;
//                     --chakra-colors-landing-almostBlack-100: #0C0CCE;
//                     --chakra-colors-landing-almostBlack-200: #0A0AA8;
//                     --chakra-colors-landing-almostBlack-300: #070781;
//                     --chakra-colors-landing-almostBlack-400: #05055B;
//                     --chakra-colors-landing-almostBlack-500: #030334;
//                     --chakra-colors-landing-almostBlack-600: #000000;
//                     --chakra-colors-landing-almostBlack-700: #000000;
//                     --chakra-colors-landing-almostBlack-800: #000000;
//                     --chakra-colors-landing-almostBlack-900: #000000;
//                     --chakra-colors-landing-accordionAccent-50: #FFFFFF;
//                     --chakra-colors-landing-accordionAccent-100: #FFFFFF;
//                     --chakra-colors-landing-accordionAccent-200: #FFFFFF;
//                     --chakra-colors-landing-accordionAccent-300: #F1F1FE;
//                     --chakra-colors-landing-accordionAccent-400: #CBCBFC;
//                     --chakra-colors-landing-accordionAccent-500: #A4A4FA;
//                     --chakra-colors-landing-accordionAccent-600: #6F6FF7;
//                     --chakra-colors-landing-accordionAccent-700: #3A3AF4;
//                     --chakra-colors-landing-accordionAccent-800: #0D0DE9;
//                     --chakra-colors-landing-accordionAccent-900: #0A0AB4;
//                     --chakra-colors-landing-founderAccent-50: #FFFFFF;
//                     --chakra-colors-landing-founderAccent-100: #FFFFFF;
//                     --chakra-colors-landing-founderAccent-200: #FEEEEF;
//                     --chakra-colors-landing-founderAccent-300: #FAC8CB;
//                     --chakra-colors-landing-founderAccent-400: #F7A3A7;
//                     --chakra-colors-landing-founderAccent-500: #F47D83;
//                     --chakra-colors-landing-founderAccent-600: #F04952;
//                     --chakra-colors-landing-founderAccent-700: #EB1620;
//                     --chakra-colors-landing-founderAccent-800: #B91018;
//                     --chakra-colors-landing-founderAccent-900: #850B11;
//                     --chakra-colors-landing-productAccent-50: #FFFFFF;
//                     --chakra-colors-landing-productAccent-100: #FFFFFF;
//                     --chakra-colors-landing-productAccent-200: #FFFFFF;
//                     --chakra-colors-landing-productAccent-300: #E2DFFA;
//                     --chakra-colors-landing-productAccent-400: #C3BCF4;
//                     --chakra-colors-landing-productAccent-500: #A499EE;
//                     --chakra-colors-landing-productAccent-600: #7969E6;
//                     --chakra-colors-landing-productAccent-700: #4E39DE;
//                     --chakra-colors-landing-productAccent-800: #3420BF;
//                     --chakra-colors-landing-productAccent-900: #27188F;
//                     --chakra-colors-landing-engineerAccent-50: #EFF8F7;
//                     --chakra-colors-landing-engineerAccent-100: #E0F2EF;
//                     --chakra-colors-landing-engineerAccent-200: #C4E6E1;
//                     --chakra-colors-landing-engineerAccent-300: #A7D9D2;
//                     --chakra-colors-landing-engineerAccent-400: #8BCDC4;
//                     --chakra-colors-landing-engineerAccent-500: #6EC1B5;
//                     --chakra-colors-landing-engineerAccent-600: #4AAD9F;
//                     --chakra-colors-landing-engineerAccent-700: #39867B;
//                     --chakra-colors-landing-engineerAccent-800: #285E57;
//                     --chakra-colors-landing-engineerAccent-900: #183733;
//                     --chakra-colors-landing-successAccent-50: #FFFCF9;
//                     --chakra-colors-landing-successAccent-100: #FDF1E6;
//                     --chakra-colors-landing-successAccent-200: #FADBC0;
//                     --chakra-colors-landing-successAccent-300: #F8C69A;
//                     --chakra-colors-landing-successAccent-400: #F5B074;
//                     --chakra-colors-landing-successAccent-500: #F29B4E;
//                     --chakra-colors-landing-successAccent-600: #EE7D1A;
//                     --chakra-colors-landing-successAccent-700: #C2620E;
//                     --chakra-colors-landing-successAccent-800: #8D480A;
//                     --chakra-colors-landing-successAccent-900: #592D07;
//                     --chakra-colors-landing-marketingAccent-50: #FFFFFF;
//                     --chakra-colors-landing-marketingAccent-100: #FFFFFF;
//                     --chakra-colors-landing-marketingAccent-200: #F8EBFF;
//                     --chakra-colors-landing-marketingAccent-300: #EAC3FF;
//                     --chakra-colors-landing-marketingAccent-400: #DC9AFF;
//                     --chakra-colors-landing-marketingAccent-500: #CE71FF;
//                     --chakra-colors-landing-marketingAccent-600: #BB39FF;
//                     --chakra-colors-landing-marketingAccent-700: #A701FF;
//                     --chakra-colors-landing-marketingAccent-800: #8300C8;
//                     --chakra-colors-landing-marketingAccent-900: #5E0090;
//                     --chakra-colors-palette-turquoise: #48A9A6;
//                     --chakra-colors-templateColors-orange-primary: #EEA14C;
//                     --chakra-colors-templateColors-orange-secondary: #FDF3D9;
//                     --chakra-colors-templateColors-blue-primary: #6868F7;
//                     --chakra-colors-templateColors-blue-secondary: #DEE0FF;
//                     --chakra-colors-templateColors-purple-primary: #6868F7;
//                     --chakra-colors-templateColors-purple-secondary: #F8F3FE;
//                     --chakra-colors-templateColors-green-primary: #62CBA6;
//                     --chakra-colors-templateColors-green-secondary: #DDF6EF;
//                     --chakra-colors-templateColors-red-primary: #D63A35;
//                     --chakra-colors-templateColors-red-secondary: #F1EEE5;
//                     --chakra-colors-templateColors-pink-primary: #E25993;
//                     --chakra-colors-templateColors-pink-secondary: #DEE1FC;
//                     --chakra-colors-templateColors-darkBlue-primary: #2C31F8;
//                     --chakra-colors-templateColors-darkBlue-secondary: #FDE2DE;
//                     --chakra-colors-templatePink-50: #FCF8FF;
//                     --chakra-colors-templatePink-100: #FFEFFD;
//                     --chakra-colors-templatePink-200: #FEE6EF;
//                     --chakra-colors-templatePink-300: #FDE2DE;
//                     --chakra-colors-templatePink-400: #F1D0D4;
//                     --chakra-colors-templatePink-500: #E4C2CF;
//                     --chakra-colors-templatePink-600: #D6B4CC;
//                     --chakra-colors-templatePink-700: #C9A7C9;
//                     --chakra-colors-templatePink-800: #BB99BB;
//                     --chakra-colors-templatePink-900: #A88CAD;
//                     --chakra-colors-templateLightPurple-50: #E5E5FF;
//                     --chakra-colors-templateLightPurple-100: #D6D6FF;
//                     --chakra-colors-templateLightPurple-200: #C8C8FF;
//                     --chakra-colors-templateLightPurple-300: #B9B9FF;
//                     --chakra-colors-templateLightPurple-400: #ABABFE;
//                     --chakra-colors-templateLightPurple-500: #9D9DFD;
//                     --chakra-colors-templateLightPurple-600: #9090FC;
//                     --chakra-colors-templateLightPurple-700: #8282FA;
//                     --chakra-colors-templateLightPurple-800: #7575F9;
//                     --chakra-colors-templateLightPurple-900: #6868F7;
//                     --chakra-colors-templateBlue-50: #E8EAFF;
//                     --chakra-colors-templateBlue-100: #DEE0FF;
//                     --chakra-colors-templateBlue-200: #CDCFEE;
//                     --chakra-colors-templateBlue-300: #BCBEDD;
//                     --chakra-colors-templateBlue-400: #ACAECC;
//                     --chakra-colors-templateBlue-500: #9C9EBB;
//                     --chakra-colors-templateBlue-600: #8C8EA9;
//                     --chakra-colors-templateBlue-700: #7C7E98;
//                     --chakra-colors-templateBlue-800: #6D6F87;
//                     --chakra-colors-templateBlue-900: #5F6075;
//                     --chakra-colors-templateRed-50: #F1EEE5;
//                     --chakra-colors-templateRed-100: #F6C1BF;
//                     --chakra-colors-templateRed-200: #F1A5A3;
//                     --chakra-colors-templateRed-300: #EB8A86;
//                     --chakra-colors-templateRed-400: #E46E6B;
//                     --chakra-colors-templateRed-500: #DE5450;
//                     --chakra-colors-templateRed-600: #D63A35;
//                     --chakra-colors-templateRed-700: #B82C28;
//                     --chakra-colors-templateRed-800: #98201C;
//                     --chakra-colors-templateRed-900: #D63A35;
//                     --chakra-colors-templateDarkGreen-50: #D6E8E5;
//                     --chakra-colors-templateDarkGreen-100: #B8D6D1;
//                     --chakra-colors-templateDarkGreen-200: #99C4BD;
//                     --chakra-colors-templateDarkGreen-300: #7BB2A9;
//                     --chakra-colors-templateDarkGreen-400: #5EA094;
//                     --chakra-colors-templateDarkGreen-500: #408D80;
//                     --chakra-colors-templateDarkGreen-600: #39887A;
//                     --chakra-colors-templateDarkGreen-700: #237A6B;
//                     --chakra-colors-templateDarkGreen-800: #066756;
//                     --chakra-colors-templateDarkGreen-900: #01604F;
//                     --chakra-colors-templateGreen-50: rgba(0, 101, 64, 0.04);
//                     --chakra-colors-templateGreen-100: rgba(0, 101, 64, 0.06);
//                     --chakra-colors-templateGreen-200: rgba(0, 101, 64, 0.08);
//                     --chakra-colors-templateGreen-300: rgba(0, 101, 64, 0.92);
//                     --chakra-colors-templateGreen-400: rgba(0, 101, 64, 0.64);
//                     --chakra-colors-templateGreen-500: rgba(0, 101, 64, 0.80);
//                     --chakra-colors-templateGreen-600: rgba(0, 101, 64, 0.92);
//                     --chakra-colors-templateGreen-700: rgba(0, 101, 64, 0.64);
//                     --chakra-colors-templateGreen-800: rgba(0, 101, 64, 0.80);
//                     --chakra-colors-templateGreen-900: rgba(0, 101, 64, 0.92);
//                     --chakra-colors-templateLightGreen-50: #DAF9F2;
//                     --chakra-colors-templateLightGreen-100: #C4F6E9;
//                     --chakra-colors-templateLightGreen-200: #AFF2E1;
//                     --chakra-colors-templateLightGreen-300: #9AEED9;
//                     --chakra-colors-templateLightGreen-400: #86E9D0;
//                     --chakra-colors-templateLightGreen-500: #72E5C8;
//                     --chakra-colors-templateLightGreen-600: #5EE0BF;
//                     --chakra-colors-templateLightGreen-700: #4ADAB6;
//                     --chakra-colors-templateLightGreen-800: #36D5AD;
//                     --chakra-colors-templateLightGreen-900: #23CFA4;
//                     --chakra-colors-templateDarkBlue-50: #DBDCFF;
//                     --chakra-colors-templateDarkBlue-100: #C6C8FF;
//                     --chakra-colors-templateDarkBlue-200: #B2B4FF;
//                     --chakra-colors-templateDarkBlue-300: #9EA0FF;
//                     --chakra-colors-templateDarkBlue-400: #8A8DFF;
//                     --chakra-colors-templateDarkBlue-500: #777AFF;
//                     --chakra-colors-templateDarkBlue-600: #6367FE;
//                     --chakra-colors-templateDarkBlue-700: #5155FC;
//                     --chakra-colors-templateDarkBlue-800: #3E43FA;
//                     --chakra-colors-templateDarkBlue-900: #2C31F8;
//                     --chakra-colors-purpleGray-100: #F7F7FD;