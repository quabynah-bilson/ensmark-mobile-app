import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

/// Custom bottom navigation bar with curved design and floating action button
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final VoidCallback? onPostTap;

  const CustomBottomNavBar({super.key, required this.currentIndex, required this.onTap, this.onPostTap});

  @override
  Widget build(BuildContext context) {
    final height = 80 + context.padding.bottom;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Custom shaped bottom navigation
        CustomPaint(
          size: Size(context.width, height),
          painter: _BottomNavPainter(
            backgroundColor: context.colorScheme.surface,
            shadowColor: context.colorScheme.surface.withValues(alpha: 0.1),
          ),
        ),

        // Navigation items
        Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Explore
              _NavItem(
                icon: TablerIcons.home_stats,
                label: 'Explore',
                isSelected: currentIndex == 0,
                onTap: () => onTap(0),
              ),

              // Saved
              _NavItem(
                icon: TablerIcons.credit_card,
                label: 'Payments',
                isSelected: currentIndex == 1,
                onTap: () => onTap(1),
              ),

              // Center space for FAB
              const SizedBox(width: 60),

              // Alerts
              _NavItem(
                icon: TablerIcons.notification,
                label: 'Alerts',
                isSelected: currentIndex == 2,
                onTap: () => onTap(2),
              ),

              // Menu
              _NavItem(
                icon: TablerIcons.user_cog,
                label: 'Profile',
                isSelected: currentIndex == 3,
                onTap: () => onTap(3),
              ),
            ],
          ),
        ),

        // Floating Action Button
        Positioned(
          bottom: height / 2 - 24,
          child: GestureDetector(
            onTap: onPostTap,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: context.colorScheme.primary.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(TablerIcons.home_plus, color: context.colorScheme.onPrimary, size: 24),
            ),
          ),
        ),
      ],
    );
  }
}

/// Individual navigation item widget
class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({required this.icon, required this.label, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? context.colorScheme.primary : context.colorScheme.onSurface.withValues(alpha: 0.67),
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? context.colorScheme.primary : context.colorScheme.onSurface.withValues(alpha: 0.67),
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Custom painter for the curved bottom navigation bar
class _BottomNavPainter extends CustomPainter {
  final Color backgroundColor;
  final Color shadowColor;

  _BottomNavPainter({required this.backgroundColor, required this.shadowColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final shadowPaint = Paint()
      ..color = shadowColor
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    final path = Path();
    final shadowPath = Path();

    // Define the curve parameters
    const double curveHeight = 20;
    const double curveWidth = 100;
    final double centerX = size.width / 2;

    // Start from the left
    path.moveTo(0, curveHeight);
    shadowPath.moveTo(0, curveHeight);

    // Left side to curve start
    final double curveStartX = centerX - curveWidth / 2;
    path.lineTo(curveStartX, curveHeight);
    shadowPath.lineTo(curveStartX, curveHeight);

    // Create the upward curve for the FAB
    path.quadraticBezierTo(
      centerX - curveWidth / 4,
      0, // Control point
      centerX,
      0, // End point
    );
    shadowPath.quadraticBezierTo(centerX - curveWidth / 4, 0, centerX, 0);

    // Create the downward curve
    path.quadraticBezierTo(
      centerX + curveWidth / 4,
      0, // Control point
      centerX + curveWidth / 2,
      curveHeight, // End point
    );
    shadowPath.quadraticBezierTo(centerX + curveWidth / 4, 0, centerX + curveWidth / 2, curveHeight);

    // Right side
    path.lineTo(size.width, curveHeight);
    shadowPath.lineTo(size.width, curveHeight);

    // Bottom edge
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    shadowPath.lineTo(size.width, size.height);
    shadowPath.lineTo(0, size.height);
    shadowPath.close();

    // Draw shadow
    canvas.drawPath(shadowPath, shadowPaint);

    // Draw the main shape
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Enum for bottom navigation tabs
enum BottomNavTab {
  explore(0),
  saved(1),
  alerts(2),
  menu(3);

  const BottomNavTab(this.value);
  final int value;
}

/*

List<BottomNavigationBarItem> _buildNavigationItems(UserRole role) {
    switch (role) {
      case UserRole.owner:
        return const [
          BottomNavigationBarItem(icon: Icon(TablerIcons.home_2), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.credit_card), label: 'Payments'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.notification), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.user_cog), label: 'Profile'),
        ];
      case UserRole.officer:
        return const [
          BottomNavigationBarItem(icon: Icon(TablerIcons.home_2), label: 'Assigned'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.notification), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.user_cog), label: 'Profile'),
        ];
    }
  }
*/
