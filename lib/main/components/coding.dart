import 'package:flutter/material.dart';
import 'package:portfoliodev/constants.dart';
import 'package:portfoliodev/components/animated_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.6, label: "Dart"),
        AnimatedLinearProgressIndicator(percentage: 0.9, label: "C++"),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: "CSS"),
        AnimatedLinearProgressIndicator(percentage: 0.8, label: "Python"),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: "Javascript"),
      ],
    );
  }
}
