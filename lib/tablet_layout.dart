import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_test/landing_section.dart';
import 'package:portfolio_test/main.dart';
import 'package:portfolio_test/mobile_layout.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TabletScreen extends ConsumerStatefulWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabletScreenState();
}

class _TabletScreenState extends ConsumerState<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Tablet build");
    final darkMode = ref.watch(darkModeStateProvider);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            decoration: BoxDecoration(
              color: darkMode ? const Color(0xFF16162C) : Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: darkMode ? const Color(0xFF16162C) : const Color(0xFFCFD8DC),
                ),
              ),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    listMenu.length,
                    (iMenu) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          listMenu[iMenu],
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: darkMode ? const Color(0xFF8C9EFF) : const Color(0xFF424970),
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    FlutterSwitch(
                      width: 40.0,
                      height: 22.0,
                      toggleSize: 20.0,
                      value: darkMode,
                      padding: 2.0,
                      activeIcon: const Icon(
                        Icons.dark_mode_rounded,
                      ),
                      inactiveIcon: const Icon(
                        Icons.light_mode_rounded,
                      ),
                      onToggle: (mode) {
                        debugPrint(mode.toString());
                        ref.read(darkModeStateProvider.state).state = mode;
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildSideTitle("HOME", ref),
              buildLanding(50.0, ref),
              buildSideTitle(versionBuild, ref),
            ],
          ))
        ],
      ),
    );
  }
}
