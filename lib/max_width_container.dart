import 'package:flutter/material.dart';
import 'package:portfolio_test/breakpoints.dart';

class MaxWidthContainer extends StatelessWidget {
  const MaxWidthContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: child,
    );
  }
}
