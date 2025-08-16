import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:mobile/features/shared/presentation/widgets/text.field.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX, TextX;
import 'package:styled_widget/styled_widget.dart';

class PropertiesListingScreen extends StatefulWidget {
  const PropertiesListingScreen({super.key});

  @override
  State<PropertiesListingScreen> createState() => _PropertiesListingScreenState();
}

class _PropertiesListingScreenState extends State<PropertiesListingScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Mock data for locations
  final List<LocationCard> _locations = [
    LocationCard(name: 'Accra', propertyCount: 830, icon: '🏛️', selected: true),
    LocationCard(name: 'Kumasi', propertyCount: 1270, icon: '🏢', selected: false),
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
      agentImageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100',
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
    return SafeArea(
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
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                  'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100'.avatar(size: 40, circular: true),
                ],
              ),
            ),

            // Search bar
            AppTextField(
              labelText: 'Search for revenue portfolios',
              controller: _searchController,
              prefixIcon: TablerIcons.search,
              required: false,
            ).padding(horizontal: 20, bottom: 24),

            // Location cards
            SizedBox(
              height: context.height * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: _locations.length,
                itemBuilder: (context, index) {
                  final location = _locations[index];
                  return _LocationCardWidget(location: location, isFirst: index == 0, selected: index == 0);
                },
              ),
            ),

            const SizedBox(height: 32),

            // Property listings
            SizedBox(
              height: context.height * 0.45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: _propertyListings.length,
                itemBuilder: (context, index) {
                  final property = _propertyListings[index];
                  return _PropertyListingCard(property: property);
                },
              ),
            ),

            const SizedBox(height: 20),
          ],
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
  final bool selected;

  LocationCard({required this.name, required this.propertyCount, required this.icon, required this.selected});
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
  final bool selected;

  const _LocationCardWidget({required this.location, required this.isFirst, required this.selected});

  @override
  Widget build(BuildContext context) {
    final isSelected = selected || location.selected;

    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 16, left: isFirst ? 0 : 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isSelected
              ? [context.colorScheme.primary, context.colorScheme.secondary]
              : [context.colorScheme.surfaceContainerHigh, context.colorScheme.surfaceContainer],
        ),
        borderRadius: BorderRadius.circular(16),
        border: isSelected
            ? Border.all(color: context.colorScheme.primary.withValues(alpha: 0.3), width: 1.5)
            : Border.all(color: context.colorScheme.outline.withValues(alpha: 0.2), width: 1),
        boxShadow: [
          BoxShadow(
            color: (isSelected ? context.colorScheme.primary : context.colorScheme.shadow).withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          if (isSelected)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: context.colorScheme.outline.withValues(alpha: 0.2)),
                ),
                child: Text(
                  'Selected',
                  style: TextStyle(color: context.colorScheme.primary, fontSize: 10, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          Positioned(
            top: 16,
            left: 16,
            child: Text(
              location.icon,
              style: TextStyle(
                fontSize: 32,
                shadows: isSelected
                    ? [Shadow(color: context.colorScheme.onPrimary.withValues(alpha: 0.3), blurRadius: 2)]
                    : [],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.name,
                  style: TextStyle(
                    color: isSelected ? context.colorScheme.onPrimary : context.colorScheme.onSurface,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    shadows: isSelected
                        ? [Shadow(color: context.colorScheme.shadow.withValues(alpha: 0.3), blurRadius: 2)]
                        : [],
                  ),
                ),
                Text(
                  '${location.propertyCount} properties',
                  style: TextStyle(
                    color: isSelected
                        ? context.colorScheme.onPrimary.withValues(alpha: 0.8)
                        : context.colorScheme.onSurfaceVariant,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom price tag shape painter
class _PriceTagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const radius = 12.0;
    const arrowWidth = 8.0;

    // Start from top-left
    path.moveTo(radius, 0);

    // Top edge to right (leaving space for arrow)
    path.lineTo(size.width - arrowWidth, 0);

    // Create arrow point
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - arrowWidth, size.height);

    // Bottom edge to left
    path.lineTo(radius, size.height);

    // Bottom-left rounded corner
    path.arcToPoint(Offset(0, size.height - radius), radius: const Radius.circular(radius));

    // Left edge
    path.lineTo(0, radius);

    // Top-left rounded corner
    path.arcToPoint(const Offset(radius, 0), radius: const Radius.circular(radius));

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// Property listing card widget
class _PropertyListingCard extends StatelessWidget {
  final PropertyListing property;

  const _PropertyListingCard({required this.property});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Agent info header
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                CircleAvatar(radius: 16, backgroundImage: NetworkImage(property.agentImageUrl)),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    property.agentName,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: context.colorScheme.onSurface),
                  ),
                ),
                Text(
                  property.timePosted,
                  style: TextStyle(color: context.colorScheme.surfaceContainerHighest, fontSize: 12),
                ),
              ],
            ),
          ),

          // Property image and price
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: NetworkImage(property.imageUrl), fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  // Custom price tag
                  Positioned(
                    top: 16,
                    left: 16,
                    child: ClipPath(
                      clipper: _PriceTagClipper(),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 8, 20, 8),
                        color: context.colorScheme.onSurface.withValues(alpha: 0.85),
                        child: Text(
                          '\$${property.price.toStringAsFixed(0)}/${property.priceType}',
                          style: TextStyle(
                            color: context.colorScheme.surface,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Bookmark icon
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(TablerIcons.bookmark, color: Colors.black, size: 16),
                    ),
                  ),

                  // Image pagination dots
                  Positioned(
                    bottom: 12,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        return Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.symmetric(horizontal: 1.5),
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
          ),

          // Property details
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              children: [
                _PropertyFeature(icon: TablerIcons.bed, text: '${property.bedrooms} bed'),
                const SizedBox(width: 16),
                _PropertyFeature(icon: TablerIcons.bath, text: '${property.bathrooms} bath'),
                const SizedBox(width: 16),
                _PropertyFeature(icon: TablerIcons.ruler_measure, text: '${property.squareFeet}'),
                const Spacer(),
                Icon(TablerIcons.bookmark, color: context.colorScheme.surfaceContainerHighest, size: 16),
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
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: context.colorScheme.surfaceContainerHighest),
        const SizedBox(width: 3),
        Text(text, style: TextStyle(color: context.colorScheme.surfaceContainerHighest, fontSize: 12)),
      ],
    );
  }
}
