import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_test/about_me_section.dart';
import 'package:portfolio_test/components/components.dart';
import 'package:portfolio_test/contact_me_section.dart';
import 'package:portfolio_test/landing_section.dart';
import 'package:portfolio_test/main.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:portfolio_test/work_section.dart';
import 'package:preload_page_view/preload_page_view.dart';

class MobileScreen extends ConsumerStatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MobileScreenState();
}

class _MobileScreenState extends ConsumerState<MobileScreen> {
  final List<Widget> listSection = const [
    LandingSection(32.0),
    AboutMeSection(),
    WorkSection(),
    ContactMeSection(),
  ];

  @override
  Widget build(BuildContext context) {
    debugPrint('Mobile build');
    final darkMode = ref.watch(darkModeStateProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Spacer(),
            RichText(
              text: TextSpan(
                style: GoogleFonts.inter(fontSize: 16.0, fontWeight: FontWeight.bold),
                children: const [
                  TextSpan(text: "s", style: TextStyle(color: Color(0xFF1A237E))),
                  TextSpan(text: "yahir_ar.dev", style: TextStyle(color: Color(0xFF24283A)))
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: IconButton(
                icon: const Icon(Icons.menu_rounded),
                color: const Color(0xFF424970),
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),
        actions: [
          Center(
            child: FlutterSwitch(
              width: 40.0,
              height: 22.0,
              toggleSize: 20.0,
              value: darkMode,
              padding: 2.0,
              activeIcon: const Icon(
                Icons.dark_mode_rounded,
                color: Colors.black87,
              ),
              inactiveIcon: const Icon(
                Icons.light_mode_rounded,
                color: Colors.black87,
              ),
              onToggle: (mode) {
                debugPrint(mode.toString());
                ref.read(darkModeStateProvider.state).state = mode;
              },
            ),
          ),
          const SizedBox(width: 30.0)
        ],
      ),
      drawer: Drawer(
        backgroundColor: darkMode ? const Color(0xFF16162C) : const Color(0xFFF6F6F6),
        child: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    buildContent("Version 2.0"),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(listMenu.length, (iMenu) {
                  return ListTile(
                    title: Text(
                      listMenu[iMenu],
                      style: GoogleFonts.inter(
                        color: darkMode ? const Color(0xFF8C9EFF) : const Color(0xFF424970),
                        fontSize: 20.0,
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: listSection.length,
        itemBuilder: (BuildContext context, int index) {
          return listSection[index];
        },
      ),
    );
  }
}

void _scrollToIndex(int page, bool status) {
  sectionController.animateToPage(
    page,
    duration: const Duration(milliseconds: 1000),
    curve: Curves.easeOutQuint,
  );
}
