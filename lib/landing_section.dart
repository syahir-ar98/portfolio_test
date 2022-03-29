import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_test/main.dart';

class LandingSection extends ConsumerWidget {
  const LandingSection(this.fontSize, {Key? key}) : super(key: key);
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    debugPrint("Landing build");
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFFFFFFFF),
            Color(0xFFEFEFEF),
          ],
        ),
      ),
      child: buildLanding(screenWidth <= 370 ? 32.0 : 36.0, ref),
    );
  }
}

Widget buildLanding(double fontSize, WidgetRef ref) {
  final darkMode = ref.watch(darkModeStateProvider);
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 80,
          height: 80,
        ),
        const SizedBox(height: 30.0),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: darkMode ? const Color(0xFF20203D) : const Color(0xFFE7E8E8),
              ),
              color: darkMode ? const Color(0xFF1C1C3C) : const Color(0xFFFFFFFF),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              "PORTFOLIO",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: darkMode ? const Color(0xFF283593) : const Color(0xFF9CA0B7),
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        RichText(
          text: TextSpan(
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: fontSize,
              ),
            ),
            children: [
              const TextSpan(
                text: '< ',
                style: TextStyle(
                  color: Color(0xFF3D5AFE),
                ),
              ),
              TextSpan(
                  text: 'S', style: TextStyle(color: darkMode ? const Color(0xFF3D5AFE) : const Color(0xFF1A237E))),
              TextSpan(
                  text: 'yahir ',
                  style: TextStyle(color: darkMode ? const Color(0xFF9FA8DA) : const Color(0xFF12141D))),
              TextSpan(
                  text: 'A', style: TextStyle(color: darkMode ? const Color(0xFF3D5AFE) : const Color(0xFF1A237E))),
              TextSpan(
                  text: '.', style: TextStyle(color: darkMode ? const Color(0xFF9FA8DA) : const Color(0xFF12141D))),
              TextSpan(
                  text: 'R', style: TextStyle(color: darkMode ? const Color(0xFF3D5AFE) : const Color(0xFF1A237E))),
              TextSpan(
                text: '.',
                style: TextStyle(color: darkMode ? const Color(0xFF9FA8DA) : const Color(0xFF12141D)),
              ),
              const TextSpan(text: ' />', style: TextStyle(color: Color(0xFF3D5AFE))),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        Container(
          decoration: BoxDecoration(
            color: darkMode ? const Color(0xFF8C9EFF) : const Color(0xFFFFFFFF),
            border: Border.all(
              color: darkMode ? const Color(0xFF3949AB) : const Color(0xFFE7E8E8),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: DefaultTextStyle(
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0xFF323752),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'FULL STACK DEVELOPER',
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'MACHINE LEARNING',
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'CLOUD COMPUTING',
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'MOBILE DEVELOPER',
                  speed: const Duration(milliseconds: 100),
                )
              ],
              repeatForever: true,
            ),
          ),
        ),
        const SizedBox(height: 50.0),
        Container(
          color: darkMode ? const Color(0xFF424970) : const Color(0xFF12141D),
          height: 100.0,
          width: 1.0,
        ),
        const SizedBox(height: 30.0),
        Container(
          padding: const EdgeInsets.all(3.5),
          width: 15.0,
          height: 15.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: darkMode ? const Color(0xFF424970) : const Color(0xFF12141D),
            ),
          ),
          child: Container(
            width: 10.0,
            height: 10.0,
            color: darkMode ? const Color(0xFF424970) : const Color(0xFF12141D),
          ),
        ),
      ],
    ),
  );
}

Widget buildSideTitle(String text, WidgetRef ref) {
  final darkMode = ref.watch(darkModeStateProvider);
  return Container(
    padding: const EdgeInsets.only(bottom: 30.0),
    width: 50.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: darkMode ? const Color(0xFF5C6BC0) : const Color(0xFF424970),
          width: 1.0,
          height: 50.0,
        ),
        const SizedBox(height: 15.0),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            text,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(fontWeight: FontWeight.w300),
              letterSpacing: 3.0,
              color: darkMode ? const Color(0xFF5C6BC0) : const Color(0xFF424970),
            ),
          ),
        ),
      ],
    ),
  );
}
