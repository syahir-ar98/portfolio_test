import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_test/max_width_container.dart';
import 'package:portfolio_test/mobile_layout.dart';
import 'package:portfolio_test/responsive_layout.dart';
import 'package:portfolio_test/tablet_layout.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

//Global Variables
const List listMenu = ["HOME", "ABOUT ME", "WORK", "CONTACT ME"];
const String versionBuild = "V 2.0";

final darkModeStateProvider = StateProvider((ref) => false);

final PageController sectionController = PageController();
final PageController pageController = PageController(viewportFraction: 0.90);

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Syahir AR | Full Stack Developer',
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final darkMode = ref.watch(darkModeStateProvider);
    debugPrint("darkMode: $darkMode");
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: double.maxFinite,
            ),
            const MaxWidthContainer(
              child: ResponsiveLayout(
                mobileBody: MobileScreen(),
                tabletBody: TabletScreen(),
                desktopBody: MyCustomDesktopContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomDesktopContent extends StatelessWidget {
  const MyCustomDesktopContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint('Desktop build');
    return const Text('Desktop');
  }
}
