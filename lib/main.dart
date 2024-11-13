import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '_1105/d_day/data/model/dDay.dart';
import 'core/theme/britness_provider.dart';
import 'home.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DDayAdapter());

  runApp(
    // Provider 용
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => CounterNotifier()),
    //     ChangeNotifierProvider(create: (_) => TextNotifier()),
    //   ],
    //   child: const MyApp(),
    // ),

    // Riverpod 용
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    var brightness = ref.watch(britnessProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesac',
      theme: ThemeData(
        brightness: brightness ? Brightness.light : Brightness.dark,
        textTheme: GoogleFonts.juaTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.jua(textStyle: textTheme.bodyMedium),
          bodyLarge: GoogleFonts.jua(textStyle: textTheme.bodyLarge),
          bodySmall: GoogleFonts.jua(textStyle: textTheme.bodySmall),
          labelMedium: GoogleFonts.jua(textStyle: textTheme.labelMedium),
          labelSmall: GoogleFonts.jua(textStyle: textTheme.labelSmall),
          labelLarge: GoogleFonts.jua(textStyle: textTheme.labelLarge),
        ),
      ),
      home: const HomePage(),
    );
  }
}
