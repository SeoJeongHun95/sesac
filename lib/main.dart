import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '_1105/d_day/data/model/dDay.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesac',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.juaTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
          bodyLarge: GoogleFonts.oswald(textStyle: textTheme.bodyLarge),
          bodySmall: GoogleFonts.oswald(textStyle: textTheme.bodySmall),
          labelMedium: GoogleFonts.oswald(textStyle: textTheme.labelMedium),
          labelSmall: GoogleFonts.oswald(textStyle: textTheme.labelSmall),
          labelLarge: GoogleFonts.oswald(textStyle: textTheme.labelLarge),
        ),
      ),
      home: const HomePage(),
    );
  }
}
