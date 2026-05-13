import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Langkah 2: Tambah variabel Future
  Future<Position>? position;

  // Langkah 3: InitState
  @override
  void initState() {
    super.initState();

    position = getPosition();
  }

  // Langkah 4: FutureBuilder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location - Tanggaq'),
      ),
      body: Center(
        child: FutureBuilder<Position>(
          future: position,
          builder:
              (BuildContext context, AsyncSnapshot<Position> snapshot) {
            // Loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            // Jika selesai
            else if (snapshot.connectionState ==
                ConnectionState.done) {

              // Langkah 5: Handling Error
              if (snapshot.hasError) {
                return const Text(
                  'Something terrible happened!',
                  style: TextStyle(fontSize: 18),
                );
              }

              // Jika berhasil
              return Text(
                'Latitude: ${snapshot.data!.latitude}\n'
                'Longitude: ${snapshot.data!.longitude}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              );
            }

            // Kondisi default
            else {
              return const Text('');
            }
          },
        ),
      ),
    );
  }

  // Langkah 1: Method getPosition()
  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}