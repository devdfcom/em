import 'package:flutter/material.dart';
import 'package:em_docs/constants/elements.dart' show webPagePadding;
import 'package:em_docs/layout/background_widget.dart';

class WebPage extends StatelessWidget {
  const WebPage({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) => BackgroundWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            minimum: const EdgeInsets.all(webPagePadding),
            child: Center(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: children),
            ),
          ),
        ),
      );
}
