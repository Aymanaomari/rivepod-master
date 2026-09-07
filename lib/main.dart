import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
<<<<<<< HEAD
=======
import 'package:riverpod_learning/basic_provider/basic_provider_screen.dart';
>>>>>>> b0da32e (provider)
import 'package:riverpod_learning/widgets%20/navigation_button.dart';

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
<<<<<<< HEAD
      routes: {},
=======
      routes: {
        BasicProviderScreen.routePath: (BuildContext context) =>
            BasicProviderScreen(),
      },
>>>>>>> b0da32e (provider)
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
<<<<<<< HEAD
          children: [NavigationButton(onPressed: () {}, destination: "Basic")],
=======
          children: [
            NavigationButton(
              onPressed: () {
                Navigator.pushNamed(context, BasicProviderScreen.routePath);
              },
              destination: "Basic",
            ),
          ],
>>>>>>> b0da32e (provider)
        ),
      ),
    );
  }
}
