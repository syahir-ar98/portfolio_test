import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_test/components/components.dart';
import 'package:portfolio_test/main.dart';

const List<String> workTitle = ["M", "y ", "W", "ork"];

class WorkSection extends ConsumerStatefulWidget {
  const WorkSection({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WorkSectionState();
}

class _WorkSectionState extends ConsumerState<WorkSection> {
  List _items = [];

  Future fetchData() async {
    final String response = await rootBundle.loadString("assets/databases/work_data.json");
    final data = await json.decode(response);
    setState(() {
      _items = data;
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Work build");
    debugPrint("item: ${_items.toList()}");
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-image-mobile.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 30.0),
                child: buildHeading(workTitle),
              ),
              SizedBox(
                height: 600.0,
                child: PageView(
                  padEnds: true,
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(_items.length, (iWork) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF000000).withOpacity(0.05),
                              blurRadius: 10.0,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: _items[iWork]['imageURL'] == 'none'
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: const Center(child: Text("NONE")))
                                  : Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(_items[iWork]['imageURL']),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _items[iWork]['title'],
                                        style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF536DFE),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        _items[iWork]['description'],
                                        style: GoogleFonts.inter(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF424970),
                                          height: 1.5,
                                        ),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          physics: const BouncingScrollPhysics(),
                                          child: Row(
                                            children: List.generate(_items[iWork]['keywords'].length, (index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(right: 5.0),
                                                child: Container(
                                                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                                  child: Text(
                                                    _items[iWork]['keywords'][index],
                                                    style: GoogleFonts.inter(
                                                      color: const Color(0xFF424970),
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius: BorderRadius.circular(15.0),
                                                    border: Border.all(color: const Color(0xFF424970)),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20.0),
                                      TextButton(
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(const Color(0xFF8C9EFF)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
                                            padding: MaterialStateProperty.all(
                                                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0))),
                                        onPressed: () {
                                          debugPrint("LEARN MORE clicked");
                                        },
                                        child: Text(
                                          "LEARN MORE",
                                          style: GoogleFonts.inter(
                                              color: const Color(0xFFFFFFFF),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.0),
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
                  }),
                ),
              ),
              Container(height: 50.0)
            ],
          ),
        ),
      ),
    );
  }
}
