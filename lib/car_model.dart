class GeoPoint {
  final double latitude;
  final double longitude;

  const GeoPoint(this.latitude, this.longitude);
}

class CarModel {
  final String carId;
  final List acceleration;
  final DateTime lastUpdate;
  final double humidity;
  final GeoPoint location;
  final double pressure;
  final List rotation;
  final double temperature;

  CarModel({
    required this.carId,
    required this.acceleration,
    required this.lastUpdate,
    required this.humidity,
    required this.location,
    required this.pressure,
    required this.rotation,
    required this.temperature,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      carId: json['carId'],
      acceleration: json['acceleration'],
      humidity: json['humidity'],
      lastUpdate: json['lastUpdate'] is DateTime
          ? json['lastUpdate']
          : DateTime.parse(json['lastUpdate'].toString()),
      location: json['location'] is GeoPoint
          ? json['location']
          : GeoPoint(
              json['location']['latitude'],
              json['location']['longitude'],
            ),
      pressure: json['pressure'],
      rotation: json['rotation'],
      temperature: json['temperature'],
    );
  }
}
