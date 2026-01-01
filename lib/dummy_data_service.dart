import 'dart:async';
import 'dart:math';
import 'car_model.dart';

class DummyDataService {
  final _controller = StreamController<List<CarModel>>.broadcast();
  Timer? _timer;
  final Random _random = Random();

  DummyDataService() {
    _startGeneratingData();
  }

  Stream<List<CarModel>> get carStream => _controller.stream;

  void _startGeneratingData() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      _controller.add(_generateDummyCars());
    });
  }

  List<CarModel> _generateDummyCars() {
    return List.generate(5, (index) {
      return CarModel(
        carId: 'Car-${100 + index}',
        acceleration: [
          _random.nextDouble() * 10,
          _random.nextDouble() * 10,
          _random.nextDouble() * 10,
        ],
        lastUpdate: DateTime.now(),
        humidity: 40 + _random.nextDouble() * 20,
        location: GeoPoint(
          6.9271 + (_random.nextDouble() - 0.5) * 0.01,
          79.8612 + (_random.nextDouble() - 0.5) * 0.01,
        ),
        pressure: 1000 + _random.nextDouble() * 50,
        rotation: [
          _random.nextDouble() * 360,
          _random.nextDouble() * 360,
          _random.nextDouble() * 360,
        ],
        temperature: 20 + _random.nextDouble() * 10,
      );
    });
  }

  void dispose() {
    _timer?.cancel();
    _controller.close();
  }
}

final dummyService = DummyDataService();
