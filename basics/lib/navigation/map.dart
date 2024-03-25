import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class Mapscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blank Screen'),
      ),
      body: FlutterMap(
    options: const MapOptions(
      initialCenter: LatLng(51.509364, -0.128928),
      initialZoom: 9.2,
    ),
    children: [
      TileLayer(
        urlTemplate: 'https://api.mapbox.com/styles/v1/yash-17/clu5xdyp501wf01nrd17ygjsk/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoieWFzaC0xNyIsImEiOiJjbHUzc29oNjUxNWM0MmxwZGZzYzIzMjNlIn0.oXOe7NzpGicUFrw49FJzrA',
        additionalOptions: const {
          'accessToken':'pk.eyJ1IjoieWFzaC0xNyIsImEiOiJjbHUzc29oNjUxNWM0MmxwZGZzYzIzMjNlIn0.oXOe7NzpGicUFrw49FJzrA',
          'id':'mapbox.mapbox-streets-v8'
        },
      ),
      RichAttributionWidget(
        attributions: [
          TextSourceAttribution(
            'OpenStreetMap contributors',
            onTap: () => launchUrl(Uri.parse('mapbox://styles/yash-17/clu5xdyp501wf01nrd17ygjsk')),
          ),
        ],
      ),
    ],
  )
    );
  }
}
