import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutMeExtra extends ConsumerWidget {
  const AboutMeExtra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xFFEFEFEF),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Icon(
                        Icons.close_rounded,
                        color: Color(0xFF424970),
                        size: 16.0,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Text(
                      "Close",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFF424970),
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 1.0,
              color: const Color(0xFFE1E1E1),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.inter(fontSize: 16.0, fontWeight: FontWeight.w500, height: 2.0),
                          children: const [
                            TextSpan(
                              text: "Hi I'm Syahir, please to meet you. Becoming a ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Full Stack Developer ",
                              style: TextStyle(color: Color(0xFF323752), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  "has been my passion since starting my journey in the IT industry. Keen on exploring and collaborate with others on upcoming trend such as ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Machine Learning ",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: ", ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Cloud Computing ",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: "and ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Mobile Development",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: ".",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.inter(fontSize: 16.0, fontWeight: FontWeight.w500, height: 2.0),
                          children: const [
                            TextSpan(
                              text: "Currently, I am investing my time on learning ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Flutter framework ",
                              style: TextStyle(color: Color(0xFF323752), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: "for Hybrid Development and some back-end solutions such as ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Microsoft Azure ",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: "and ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Google Firebase ",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  ". I'm always open to other technologies and languages used in today's IT industry standard.",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.inter(fontSize: 16.0, fontWeight: FontWeight.w500, height: 2.0),
                          children: const [
                            TextSpan(
                              text: "I'm all into ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "versatility ",
                              style: TextStyle(color: Color(0xFF323752), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: "and ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "adaptability  ",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  "as I believe a person who can adapt to such drastic change will be able to do achieve more in a steady pace. Hence, I'm willing to venture into different IT fields such as ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Data Science ",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: "and ",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                            TextSpan(
                              text: "Internet of Things (IoT)",
                              style: TextStyle(color: Color(0xFF3949AB), fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  ". I will always be in search of new ideas different from my field of expertise to expand my portfolio and skills. Next, to be able to utilize those knowledge by connecting the strings to develop solutions for the benefits of humankind.",
                              style: TextStyle(color: Color(0xFF424970)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
