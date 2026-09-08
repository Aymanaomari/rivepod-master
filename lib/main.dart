import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/basic_provider/basic_provider_screen.dart';
import 'package:riverpod_learning/widgets/navigation_button.dart';
import 'package:riverpod_learning/stream_provider/stream_provider_page.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        BasicProviderScreen.routePath: (BuildContext context) =>
            BasicProviderScreen(),

        StreamProviderPage.routePath: (BuildContext context) =>
            StreamProviderPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            NavigationButton(
              onPressed: () {
                Navigator.pushNamed(context, BasicProviderScreen.routePath);
              },
              destination: "Basic",
            ),

            NavigationButton(
              onPressed: () {
                Navigator.pushNamed(context, StreamProviderPage.routePath);
              },
              destination: "Stream",
            ),
          ],
        ),
      ),
    );
  }
}
