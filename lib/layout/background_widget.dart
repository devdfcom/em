import 'package:flutter/material.dart';
import 'package:em_docs/theme/app_images.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ResizeImage(
              AssetImage(const AppImages().backgroundDark),
              height: MediaQuery.of(context).size.height.toInt(),
              policy: ResizeImagePolicy.fit,
              allowUpscaling: true,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      );
}
