import 'package:em_docs/extensions/datetime_formatter.dart';
import 'package:em_docs/extensions/words_capitalization.dart';
import 'package:flutter/material.dart';
import 'package:em_docs/layout/static_text_page.dart';
import 'package:em_docs/texts/terms_of_use_model.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) => WebStaticTextPage(children: [
        Text(TermsOfUseModel.title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                )),
        const SizedBox(height: 15),
        Text(TermsOfUseModel.content,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.25,
                )),
        const SizedBox(height: 15),
        Text.rich(TextSpan(
          text: 'Last revision: ',
          children: [
            TextSpan(
              text: TermsOfUseModel.revision.format('EEEE, d MMMM yyyy').wordsCapitalization,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 0.15,
              ),
        )),
      ]);
}
