import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

class PropertiesListingScreen extends StatefulWidget {
  const PropertiesListingScreen({super.key});

  @override
  State<PropertiesListingScreen> createState() => _PropertiesListingScreenState();
}

class _PropertiesListingScreenState extends State<PropertiesListingScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Mock data for locations
  final List<LocationCard> _locations = [
    LocationCard(name: 'Accra', propertyCount: 830, icon: '🏛️', color: const Color(0xFF3B82F6)),
    LocationCard(name: 'Kumasi', propertyCount: 1270, icon: '🏢', color: const Color(0xFF10B981)),
  ];

  // Mock property listings with detailed information
  final List<PropertyListing> _propertyListings = [
    PropertyListing(
      id: '1',
      imageUrl: 'https://images.unsplash.com/photo-1555636222-cae831e670b3?w=400',
      price: 2300,
      priceType: 'mo',
      agentName: 'Amanda',
      timePosted: '2h ago',
      agentImageUrl: 'https://images.unsplash.com/photo-1494790108755-2616b0ab9c99?w=100',
      bedrooms: 2,
      bathrooms: 2,
      squareFeet: 335,
      location: 'East Legon, Accra',
    ),
    PropertyListing(
      id: '2',
      imageUrl: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400',
      price: 3000,
      priceType: 'mo',
      agentName: 'Jack',
      timePosted: '3d ago',
      agentImageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100',
      bedrooms: 3,
      bathrooms: 2,
      squareFeet: 450,
      location: 'Airport Hills, Accra',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and profile
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: context.textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100',
                      ),
                    ),
                  ],
                ),
              ),

              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Icon(TablerIcons.search, color: Colors.grey[500], size: 20),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search for properties or regions',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Location cards
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: _locations.length,
                  itemBuilder: (context, index) {
                    final location = _locations[index];
                    return _LocationCardWidget(location: location, isFirst: index == 0);
                  },
                ),
              ),

              const SizedBox(height: 32),

              // Property listings
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _propertyListings.length,
                itemBuilder: (context, index) {
                  final property = _propertyListings[index];
                  return _PropertyListingCard(property: property);
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// Data models for the new interface
class LocationCard {
  final String name;
  final int propertyCount;
  final String icon;
  final Color color;

  LocationCard({required this.name, required this.propertyCount, required this.icon, required this.color});
}

class PropertyListing {
  final String id;
  final String imageUrl;
  final double price;
  final String priceType;
  final String agentName;
  final String timePosted;
  final String agentImageUrl;
  final int bedrooms;
  final int bathrooms;
  final int squareFeet;
  final String location;

  PropertyListing({
    required this.id,
    required this.imageUrl,
    required this.price,
    required this.priceType,
    required this.agentName,
    required this.timePosted,
    required this.agentImageUrl,
    required this.bedrooms,
    required this.bathrooms,
    required this.squareFeet,
    required this.location,
  });
}

// Location card widget
class _LocationCardWidget extends StatelessWidget {
  final LocationCard location;
  final bool isFirst;

  const _LocationCardWidget({required this.location, required this.isFirst});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 16, left: isFirst ? 0 : 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [location.color, location.color.withValues(alpha: 0.8)],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          if (isFirst)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
                ),
                child: Text(
                  'Selected',
                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          Positioned(top: 16, left: 16, child: Text(location.icon, style: const TextStyle(fontSize: 32))),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.name,
                  style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  '${location.propertyCount} properties',
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Property listing card widget
class _PropertyListingCard extends StatelessWidget {
  final PropertyListing property;

  const _PropertyListingCard({required this.property});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Agent info header
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                CircleAvatar(radius: 20, backgroundImage: NetworkImage(property.agentImageUrl)),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    property.agentName,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ),
                Text(property.timePosted, style: TextStyle(color: Colors.grey[500], fontSize: 14)),
              ],
            ),
          ),

          // Property image and price
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: NetworkImage(property.imageUrl), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                // Price tag
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '\$${property.price.toStringAsFixed(0)}/${property.priceType}',
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                ),

                // Bookmark icon
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(TablerIcons.bookmark, color: Colors.black, size: 20),
                  ),
                ),

                // Image pagination dots
                Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: index == 0 ? Colors.white : Colors.white.withValues(alpha: 0.4),
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),

          // Property details
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                _PropertyFeature(icon: TablerIcons.bed, text: '${property.bedrooms} bedrooms'),
                const SizedBox(width: 24),
                _PropertyFeature(icon: TablerIcons.bath, text: '${property.bathrooms} baths'),
                const SizedBox(width: 24),
                _PropertyFeature(icon: TablerIcons.ruler_measure, text: '${property.squareFeet} sqft'),
                const Spacer(),
                Icon(TablerIcons.bookmark, color: Colors.grey[400], size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Property feature widget
class _PropertyFeature extends StatelessWidget {
  final IconData icon;
  final String text;

  const _PropertyFeature({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey[600]),
        const SizedBox(width: 4),
        Text(text, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
      ],
    );
  }
}
