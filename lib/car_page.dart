import 'package:flutter/material.dart';
import 'package:realtime_car_tracking_web_app/car_model.dart';
import 'package:realtime_car_tracking_web_app/gauges.dart';
import 'package:realtime_car_tracking_web_app/dummy_data_service.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CarPage extends StatefulWidget {
  final int carDocumentID;

  const CarPage({super.key, required this.carDocumentID});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  List dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: carDetails());
  }

  Widget appBar({required CarModel carModel}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text(
                  "Car Identification: ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  carModel.carId,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            dataListCard(carModel: carModel),
          ],
        ),
        const SizedBox(height: 20.0),
        Text(
          "Last Update: ${carModel.lastUpdate}",
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget textHeaderMini({required String title, required String value}) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Colors.pink,
            ),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget dataListCard({required CarModel carModel}) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 20.0,
      runSpacing: 20.0,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textHeaderMini(
              title: "Location: ",
              value:
                  "${carModel.location.latitude}, ${carModel.location.longitude}",
            ),
            const SizedBox(width: 20.0),
            textHeaderMini(title: "Pressure: ", value: "${carModel.pressure}"),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textHeaderMini(
              title: "Temperature: ",
              value: "${carModel.temperature}",
            ),
            const SizedBox(width: 20.0),
            textHeaderMini(
              title: "Acceleration: ",
              value:
                  "${carModel.acceleration[0]}, ${carModel.acceleration[1]}, ${carModel.acceleration[2]}",
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textHeaderMini(title: "Humidity: ", value: "${carModel.humidity}"),
            const SizedBox(width: 20.0),
            textHeaderMini(
              title: "Rotation: ",
              value:
                  "${carModel.rotation[0]}, ${carModel.rotation[1]}, ${carModel.rotation[2]}",
            ),
          ],
        ),
      ],
    );
  }

  Widget map(CarModel carModel) {
    return Column(
      children: [
        Text(
          "Location: ${carModel.location.latitude}, ${carModel.location.longitude}",
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: 500.0,
          width: 600.0,
          child: FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(
                carModel.location.latitude,
                carModel.location.longitude,
              ),
              initialZoom: 18.0,
              maxZoom: 18.0,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 30.0,
                    height: 30.0,
                    point: LatLng(
                      carModel.location.latitude,
                      carModel.location.longitude,
                    ),
                    child: Image.asset(
                      "assets/images/car.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget carDetails() {
    return StreamBuilder<List<CarModel>>(
      stream: dummyService.carStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }

        if (!snapshot.hasData) {
          return const Text(
            "Data Unavailable",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          );
        } else {
          CarModel carModel = snapshot.data![widget.carDocumentID];

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appBar(carModel: carModel),
                  const SizedBox(height: 40.0),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 20.0,
                    runSpacing: 40.0,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/images/f1.png", width: 420.0),
                          const SizedBox(height: 40.0),
                          Wrap(
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              Gauges().pressure(carModel.pressure),
                              Gauges().temperature(carModel.temperature),
                              const SizedBox(width: 30.0),
                              Gauges().humidity(carModel.humidity),
                            ],
                          ),
                        ],
                      ),
                      map(carModel),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
