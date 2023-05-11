// // Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// // for details. All rights reserved. Use of this source code is governed by a
// // BSD-style license that can be found in the LICENSE file.

// import 'dart:math';
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';

// @immutable
// class ExampleGradientBubbles extends StatefulWidget {
//   const ExampleGradientBubbles({super.key});

//   @override
//   State<ExampleGradientBubbles> createState() => _ExampleGradientBubblesState();
// }

// class _ExampleGradientBubblesState extends State<ExampleGradientBubbles> {
//   late final List<Message> data;

//   @override
//   void initState() {
//     super.initState();
//     data = MessageGenerator.generate(60, 1337);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: const Color(0xFF4F4F4F),
//       ),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Chat'),
//         ),
//         body: SafeArea(
//           child: ListView.builder(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             reverse: true,
//             itemCount: data.length,
//             itemBuilder: (context, index) {
//               final message = data[index];
//               return MessageBubble(
//                 message: message,
//                 child: Text(message.text),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// @immutable
// class MessageBubble extends StatelessWidget {
//   const MessageBubble({
//     super.key,
//     required this.message,
//     required this.child,
//   });

//   final Message message;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     final messageAlignment =
//         message.isMine ? Alignment.topLeft : Alignment.topRight;

//     return FractionallySizedBox(
//       alignment: messageAlignment,
//       widthFactor: 0.8,
//       child: Align(
//         alignment: messageAlignment,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
//           child: ClipRRect(
//             borderRadius: const BorderRadius.all(Radius.circular(16.0)),
//             child: BubbleBackground(
//               colors: [
//                 if (message.isMine) ...const [
//                   Color(0xFF6C7689),
//                   Color(0xFF3A364B),
//                 ] else ...const [
//                   Color(0xFF19B7FF),
//                   Color(0xFF491CCB),
//                 ],
//               ],
//               child: DefaultTextStyle.merge(
//                 style: const TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.white,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: child,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// @immutable
// class BubbleBackground extends StatelessWidget {
//   const BubbleBackground({
//     super.key,
//     required this.colors,
//     this.child,
//   });

//   final List<Color> colors;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: BubblePainter(
//         scrollable: Scrollable.of(context),
//         bubbleContext: context,
//         colors: colors,
//       ),
//       child: child,
//     );
//   }
// }

// class BubblePainter extends CustomPainter {
//   BubblePainter({
//     required ScrollableState scrollable,
//     required BuildContext bubbleContext,
//     required List<Color> colors,
//   })  : _scrollable = scrollable,
//         _bubbleContext = bubbleContext,
//         _colors = colors,
//         super(repaint: scrollable.position);

//   final ScrollableState _scrollable;
//   final BuildContext _bubbleContext;
//   final List<Color> _colors;

//   @override
//   void paint(Canvas canvas, Size size) {
//     final scrollableBox = _scrollable.context.findRenderObject() as RenderBox;
//     final scrollableRect = Offset.zero & scrollableBox.size;
//     final bubbleBox = _bubbleContext.findRenderObject() as RenderBox;

//     final origin =
//         bubbleBox.localToGlobal(Offset.zero, ancestor: scrollableBox);
//     final paint = Paint()
//       ..shader = ui.Gradient.linear(
//         scrollableRect.topCenter,
//         scrollableRect.bottomCenter,
//         _colors,
//         [0.0, 1.0],
//         TileMode.clamp,
//         Matrix4.translationValues(-origin.dx, -origin.dy, 0.0).storage,
//       );
//     canvas.drawRect(Offset.zero & size, paint);
//   }

//   @override
//   bool shouldRepaint(BubblePainter oldDelegate) {
//     return oldDelegate._scrollable != _scrollable ||
//         oldDelegate._bubbleContext != _bubbleContext ||
//         oldDelegate._colors != _colors;
//   }
// }

// enum MessageOwner { myself, other }

// @immutable
// class Message {
//   const Message({
//     required this.owner,
//     required this.text,
//   });

//   final MessageOwner owner;
//   final String text;

//   bool get isMine => owner == MessageOwner.myself;
// }

// class MessageGenerator {
//   static List<Message> generate(int count, [int? seed]) {
//     final random = Random(seed);
//     return List.unmodifiable(List<Message>.generate(count, (index) {
//       return Message(
//         owner: random.nextBool() ? MessageOwner.myself : MessageOwner.other,
//         text: _exampleData[random.nextInt(_exampleData.length)],
//       );
//     }));
//   }

//   static final _exampleData = [
//     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//     'In tempus mauris at velit egestas, sed blandit felis ultrices.',
//     'Ut molestie mauris et ligula finibus iaculis.',
//     'Sed a tempor ligula.',
//     'Test',
//     'Phasellus ullamcorper, mi ut imperdiet consequat, nibh augue condimentum nunc, vitae molestie massa augue nec erat.',
//     'Donec scelerisque, erat vel placerat facilisis, eros turpis egestas nulla, a sodales elit nibh et enim.',
//     'Mauris quis dignissim neque. In a odio leo. Aliquam egestas egestas tempor. Etiam at tortor metus.',
//     'Quisque lacinia imperdiet faucibus.',
//     'Proin egestas arcu non nisl laoreet, vitae iaculis enim volutpat. In vehicula convallis magna.',
//     'Phasellus at diam a sapien laoreet gravida.',
//     'Fusce maximus fermentum sem a scelerisque.',
//     'Nam convallis sapien augue, malesuada aliquam dui bibendum nec.',
//     'Quisque dictum tincidunt ex non lobortis.',
//     'In hac habitasse platea dictumst.',
//     'Ut pharetra ligula libero, sit amet imperdiet lorem luctus sit amet.',
//     'Sed ex lorem, lacinia et varius vitae, sagittis eget libero.',
//     'Vestibulum scelerisque velit sed augue ultricies, ut vestibulum lorem luctus.',
//     'Pellentesque et risus pretium, egestas ipsum at, facilisis lectus.',
//     'Praesent id eleifend lacus.',
//     'Fusce convallis eu tortor sit amet mattis.',
//     'Vivamus lacinia magna ut urna feugiat tincidunt.',
//     'Sed in diam ut dolor imperdiet vehicula non ac turpis.',
//     'Praesent at est hendrerit, laoreet tortor sed, varius mi.',
//     'Nunc in odio leo.',
//     'Praesent placerat semper libero, ut aliquet dolor.',
//     'Vestibulum elementum leo metus, vitae auctor lorem tincidunt ut.',
//   ];
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_mix/contants/colors.dart';
import 'package:noise_mix/contants/shadow.dart';
import 'package:noise_mix/widgets/layout/blurry_container.dart';
import 'package:noise_mix/widgets/layout/glass.dart';
import 'package:palette_generator/palette_generator.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  List<Color> gradientColor = [];

  @override
  void initState() {
    super.initState();
    // getColors(
    //   imageProvider: const NetworkImage(
    //       'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png'),
    // ).then(
    //   (value) => gradientColor = value,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000212),
      body: SizedBox(
        width: double.maxFinite,

        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 800,
                width: double.maxFinite,
                color: const Color(0xff000212), //000212
                // decoration: BoxDecoration(

                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [
                //     Color(0xff000212),
                //     Color(0xff000212),
                //   ],
                // ),
                // ),
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Built for the future',
                      style: GoogleFonts.inter(
                        color: const Color(0xff6B4CE8),
                        // color: const Color(0xffF7F8F8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Built for the future',
                      style: GoogleFonts.inter(
                        color: const Color(0xffE936F8),
                        // color: const Color(0xffF7F8F8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Built for the future',
                      style: GoogleFonts.inter(
                        color: const Color(0xffF7F8F8),
                        // color: const Color(0xffF7F8F8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Product',
                      style: GoogleFonts.inter(
                        color: const Color(0xffD0E6E0),
                      ),
                    ),
                    Text(
                      'Features',
                      style: GoogleFonts.inter(
                        color: const Color(0xff8A8F98),
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        //#c81679,#7d4bf
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff455eb5),
                            Color(0xff5643cc),
                            Color(0xff673fd7),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign up for free',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(88),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff6B4CE8).withOpacity(0.8),
                              blurRadius: 8,
                              offset: Offset(-4, 0),
                            ),
                            BoxShadow(
                              color: Color(0xffE936F8).withOpacity(0.8),
                              blurRadius: 8,
                              offset: Offset(4, 0),
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff6B4CE8),
                              Color(0xffE936F8),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Started',
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.white.withOpacity(0.4),
                          //     blurRadius: 12,
                          //     offset: Offset(-4, 0),
                          //   ),
                          //   BoxShadow(
                          //     color: Colors.white.withOpacity(0.4),
                          //     blurRadius: 12,
                          //     offset: Offset(4, 0),
                          //   ),
                          // ],
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 209, 208, 214),
                              Color.fromARGB(255, 233, 174, 238),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Started',
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),

                    // BlurryContainer(
                    //   blur: 10,
                    //   color: AppColors.vWhite.withOpacity(0.2),
                    //   borderRadius: const BorderRadius.only(
                    //     topRight: Radius.circular(12),
                    //     bottomRight: Radius.circular(12),
                    //   ),
                    //   child: Container(
                    //     width: 300,
                    //     height: 100,
                    //     child: Center(
                    //       child: Text(
                    //         'Started',
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                height: 800,
                width: double.maxFinite,
                color: const Color(0xff191A23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Built for the future',
                      style: GoogleFonts.inter(
                        color: const Color(0xff6B4CE8),
                        // color: const Color(0xffF7F8F8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Built for the future',
                      style: GoogleFonts.inter(
                        color: const Color(0xffE936F8),
                        // color: const Color(0xffF7F8F8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Built for the future',
                      style: GoogleFonts.inter(
                        color: const Color(0xffF7F8F8),
                        // color: const Color(0xffF7F8F8),
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Product',
                      style: GoogleFonts.inter(
                        color: const Color(0xffD0E6E0),
                      ),
                    ),
                    Text(
                      'Features',
                      style: GoogleFonts.inter(
                        color: const Color(0xff8A8F98),
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        //#c81679,#7d4bf
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff455eb5),
                            Color(0xff5643cc),
                            Color(0xff673fd7),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign up for free',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(88),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff6B4CE8),
                            Color(0xffE936F8),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Started',
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),

                    // BlurryContainer(
                    //   blur: 10,
                    //   color: AppColors.vWhite.withOpacity(0.2),
                    //   borderRadius: const BorderRadius.only(
                    //     topRight: Radius.circular(12),
                    //     bottomRight: Radius.circular(12),
                    //   ),
                    //   child: Container(
                    //     width: 300,
                    //     height: 100,
                    //     child: Center(
                    //       child: Text(
                    //         'Started',
                    //         style: TextStyle(color: Colors.white),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffC71679),
                      Colors.black,
                      // Color(0xff9f75f9),
                    ],
                  ),
                  // color: Colors.amber,
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Create emails',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 48,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Roboto',
                      style: GoogleFonts.roboto(
                        color: const Color(0xffC71679),
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Transfer app',
                      style: TextStyle(
                          color: Color(0xff8952fd),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Collaboration',
                      style: TextStyle(
                          color: Color(0xfffc856d),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        //#c81679,#7d4bf
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffc81679),
                            Color(0xff7d4bf9),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Click Me',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
              ),
            ],
          ),
        ),
        // child: const Center(
        //   child: Image(
        //     width: 300,
        //     height: 300,
        //     image: NetworkImage(
        //         'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png'),
        //   ),
        // ),
      ),
    );
  }
}

Future<List<Color>> getColors({
  required ImageProvider imageProvider,
}) async {
  PaletteGenerator paletteGenerator;
  paletteGenerator = await PaletteGenerator.fromImageProvider(imageProvider);
  final Color dominantColor =
      paletteGenerator.dominantColor?.color ?? Colors.black;
  final Color darkMutedColor =
      paletteGenerator.darkMutedColor?.color ?? Colors.black;
  final Color lightMutedColor =
      paletteGenerator.lightMutedColor?.color ?? dominantColor;
  if (dominantColor.computeLuminance() < darkMutedColor.computeLuminance()) {
    // checks if the luminance of the darkMuted color is > than the luminance of the dominant
    // GetIt.I<MyTheme>().playGradientColor = [
    //   darkMutedColor,
    //   dominantColor,
    // ];
    return [
      darkMutedColor,
      dominantColor,
    ];
  } else if (dominantColor == darkMutedColor) {
    // if the two colors are the same, it will replace dominantColor by lightMutedColor
    // GetIt.I<MyTheme>().playGradientColor = [
    //   lightMutedColor,
    //   darkMutedColor,
    // ];
    return [
      lightMutedColor,
      darkMutedColor,
    ];
  } else {
    // GetIt.I<MyTheme>().playGradientColor = [
    //   dominantColor,
    //   darkMutedColor,
    // ];
    return [
      dominantColor,
      darkMutedColor,
    ];
  }
}
