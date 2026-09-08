import 'dart:async';

class CounterDataSource {
  CounterDataSource() {
    _controller = StreamController<int>.broadcast();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _count++;
      if (!_controller.isClosed) {
        _controller.add(_count);
      }
    });
  }

  late StreamController<int> _controller;
  late Timer _timer;
  int _count = 0;

  Stream<int> get stream => _controller.stream;

  void dispose() {
    _timer.cancel();
    _controller.close();
  }
}
