import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/enums/cities.dart';
import 'package:riverpod_learning/first_weather/async_value_extension.dart';
import 'package:riverpod_learning/first_weather/first_weather_provider.dart';

class FirstWeatherPage extends ConsumerStatefulWidget {
  const FirstWeatherPage({super.key});

  static const routePath = '/first-weather';

  @override
  ConsumerState<FirstWeatherPage> createState() => _FirstWeatherPageState();
}

class _FirstWeatherPageState extends ConsumerState<FirstWeatherPage> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<String>>(firstWeatherProvider, (prev, next) {
      if (next.hasError && !next.isLoading) {
        showDialog(
          context: context,
          builder: (BuildContext context) =>
              AlertDialog(content: Text(next.error.toString())),
        );
      }
    });

    final weather = ref.watch(firstWeatherProvider);

    print(weather.props);

    print("============================================");

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _counter = 1;
              ref.invalidate(firstWeatherProvider);
            },
          ),
        ],
      ),
      body: Center(
        child: weather.when(
          skipError: true,
          data: (data) => Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(data), _buildNextButton()],
          ),
          error: (error, stack) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text(error.toString()), _buildNextButton()],
          ),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return MaterialButton(
      onPressed: () {
        final city = Cities.values[_counter % 4];
        _counter++;
        ref.read(firstWeatherProvider.notifier).getTemperature(city);
      },
      child: const Text('Next'),
    );
  }
}
