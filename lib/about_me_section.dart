import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_test/about_me_extra.dart';
import 'package:portfolio_test/components/components.dart';

final List<String> listSkills = [
  "assets/images/flutter@2x.png",
  "assets/images/javascript@2x.png",
  "assets/images/python@2x.png",
  "assets/images/php@2x.png",
  "assets/images/node-js@2x.png",
  "assets/images/cplusplus@2x.png",
  "assets/images/firebase@2x.png",
  "assets/images/microsoftazure@2x.png",
  "assets/images/power-bi@2x.png",
  "assets/images/mysql@2x.png",
  "assets/images/html5@2x.png",
  "assets/images/css3@2x.png",
];

const List<String> aboutMetitle = ["W", "ho ", "A", "m ", "I", "?"];

class AboutMeSection extends ConsumerWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("About Me build");
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
      color: const Color(0xFFEFEFEF),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeading(aboutMetitle),
          const SizedBox(height: 30.0),
          buildSubHeading('SUMMARY'),
          const SizedBox(height: 10.0),
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
          const SizedBox(height: 20.0),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFF8C9EFF)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0))),
            onPressed: () {
              debugPrint("READ MORE clicked");
              showGeneralDialog(
                context: context,
                barrierDismissible: false,
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (context, animation, secondAnimation) {
                  return const AboutMeExtra();
                },
              );
            },
            child: Text(
              "READ MORE",
              style: GoogleFonts.inter(
                  color: const Color(0xFFFFFFFF), fontSize: 14.0, fontWeight: FontWeight.w600, letterSpacing: 1.0),
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xFFFFFFFF),
            ),
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.inter(fontSize: 16.0, fontWeight: FontWeight.w500, height: 1.5),
                  children: const [
                    TextSpan(
                      text: '"Create ',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                    TextSpan(
                      text: 'better tools ',
                      style: TextStyle(color: Color(0xFF536DFE), fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'for people to create ',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                    TextSpan(
                      text: 'better things',
                      style: TextStyle(color: Color(0xFF536DFE), fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: '. "',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          buildSubHeading('SKILLS'),
          const SizedBox(height: 20.0),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: List.generate(
                      6,
                      (iSkills) => Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Image.asset(
                          listSkills[iSkills],
                          height: 36.0,
                          width: 36.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: List.generate(
                      6,
                      (iSkills) => Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Image.asset(
                          listSkills[iSkills + 6],
                          height: 36.0,
                          width: 36.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xFFFFFFFF),
            ),
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.inter(fontSize: 16.0, fontWeight: FontWeight.w500, height: 1.5),
                  children: const [
                    TextSpan(
                      text: '" Constant ',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                    TextSpan(
                      text: 'learning',
                      style: TextStyle(color: Color(0xFF536DFE), fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: ', ',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                    TextSpan(
                      text: 'adaptability ',
                      style: TextStyle(color: Color(0xFF536DFE), fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                    TextSpan(
                      text: 'versatility',
                      style: TextStyle(color: Color(0xFF536DFE), fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: '. "',
                      style: TextStyle(color: Color(0xFF424970)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
