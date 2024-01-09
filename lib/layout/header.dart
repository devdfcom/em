import 'package:flutter/material.dart';
import 'package:em_docs/constants/elements.dart';
import 'package:em_docs/elements/web_text_button.dart';

class WebHeader extends StatefulWidget {
  const WebHeader({super.key});

  @override
  State<WebHeader> createState() => _WebHeaderState();
}

class _WebHeaderState extends State<WebHeader> {
  bool get _isIndexRoute => ModalRoute.of(context)?.settings.name == '/';

  @override
  Widget build(BuildContext context) => FractionallySizedBox(
        widthFactor: webHeaderWidthFactor,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: kElevationToShadow[3],
          ),
          child: Row(
            children: [
              Container(
                width: webHeaderAppIconSize,
                height: webHeaderAppIconSize,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: kElevationToShadow[1],
                ),
                child: Image.asset('images/app-icon-512.png'),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: _isIndexRoute ? null : () => Navigator.pushNamed(context, '/'),
                                child: Text(
                                  'Estate Manager',
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  const WebTextButton(routeName: '/privacy', child: Text('Privacy')),
                                  const SizedBox(width: 5),
                                  const WebTextButton(routeName: '/terms', child: Text('Terms')),
                                  const SizedBox(width: 5),
                                  WebTextButton(
                                    onPressed: () => showLicensePage(
                                      useRootNavigator: true,
                                      context: context,
                                      applicationName: 'Estate Manager',
                                      applicationIcon: Container(
                                        padding: const EdgeInsets.all(5),
                                        child: Image.asset('images/app-icon-192.webp'),
                                      ),
                                      applicationLegalese: '\u{a9} ${DateTime.now().year} DevDF Yackers',
                                    ),
                                    child: const Text('Licenses'),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
