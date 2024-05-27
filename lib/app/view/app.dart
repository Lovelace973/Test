import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mam_sport_sante_app/features/idee/view/idee.dart';
import 'package:mam_sport_sante_app/l10n/l10n.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme()
            .apply(bodyColor: const Color(0xff1A202C)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff1A202C),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Idee(),
    );
  }
}
