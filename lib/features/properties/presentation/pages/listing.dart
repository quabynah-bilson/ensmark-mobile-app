import 'package:flutter/material.dart';

class PropertiesListingScreen extends StatefulWidget {
  const PropertiesListingScreen({super.key});

  @override
  State<PropertiesListingScreen> createState() => _PropertiesListingScreenState();
}

class _PropertiesListingScreenState extends State<PropertiesListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text('Properties Listing'));
  }
}
