import 'package:counter_with_inherit/features/counter_app/ui/main_page.dart';
import 'package:counter_with_inherit/injector.dart';
import 'package:flutter/material.dart';
import 'package:counter_with_inherit/features/counter_app/di/counter_inherited.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterInherited(
      counterController: sl(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainPage(),
      ),
    );
  }
}
