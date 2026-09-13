import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/enums/cities.dart';

part 'first_weather_provider.g.dart';

@Riverpod(keepAlive: false)
class FirstWeather extends _$FirstWeather {
  int _listenersAdded = 0;

  @override
  FutureOr<String> build() {
    ref.onDispose(() {
      print('FirstWeather disposed after $_listenersAdded listener additions');
      _listenersAdded = 0;
    });

    ref.onAddListener(() {
      _listenersAdded++;
      print('FirstWeather listeners added: $_listenersAdded');
    });

    return _getTemp(Cities.seoul);
  }

  Future<String> _getTemp(Cities city) async {
    await Future.delayed(const Duration(seconds: 1));
    switch (city) {
      case Cities.seoul:
        return "${city.name} 29";
      case Cities.bangkok:
        return "${city.name} 25";
      case Cities.london:
        throw UnimplementedError(
          'Weather for ${city.name} is not implemented yet',
        );
      case Cities.tokyo:
        throw StateError('Weather for ${city.name} is unavailable');
    }
  }

  Future<void> getTemperature(Cities city) async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() => _getTemp(city));
    // return
  }

  void setState(AsyncValue<String> newState) {
    state = newState;
  }
}
