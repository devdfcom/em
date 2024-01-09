import 'package:flutter/material.dart';
import 'package:em_docs/constants/elements.dart';
import 'package:em_docs/layout/header.dart';
import 'package:em_docs/layout/pager.dart';

class WebStaticTextPage extends StatelessWidget {
  const WebStaticTextPage({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) => WebPage(children: [
        const WebHeader(),
        const SizedBox(height: 20),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: kElevationToShadow[3],
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FractionallySizedBox(
                widthFactor: webHeaderWidthFactor,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: children),
              ),
            ),
          ),
        )
      ]);
}
