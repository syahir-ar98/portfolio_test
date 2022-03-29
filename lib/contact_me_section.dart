import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_test/components/components.dart';

const List<String> contactMeTitle = ["C", "ontact ", "M", "e"];

class ContactMeSection extends ConsumerWidget {
  const ContactMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("Contact Me build");
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeading(contactMeTitle),
            const SizedBox(height: 40.0),
            buildSubHeading("EMAIL"),
            const SizedBox(height: 5.0),
            buildContent("syahir.ar98@gmail.com"),
            const SizedBox(height: 40.0),
            buildSubHeading("PHONE NUMBER"),
            const SizedBox(height: 5.0),
            buildContent("+60126111590"),
            const SizedBox(height: 40.0),
            buildSubHeading("SOCIAL MEDIA"),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Image.asset(
                  "assets/images/linkedin@2x.png",
                  width: 30.0,
                  height: 30.0,
                ),
                const SizedBox(width: 10.0),
                buildContent("Connect with LinkedIn"),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Image.asset(
                  "assets/images/github@2x.png",
                  width: 30.0,
                  height: 30.0,
                ),
                const SizedBox(width: 10.0),
                buildContent("Connect with GitHub"),
              ],
            ),
            const SizedBox(height: 40.0),
            buildSubHeading("MY RESUME"),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Image.asset(
                  "assets/images/download@2x.png",
                  width: 30.0,
                  height: 30.0,
                ),
                const SizedBox(width: 10.0),
                buildContent("Download My Resume"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
