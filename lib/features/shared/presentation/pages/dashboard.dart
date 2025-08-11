import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/shared/presentation/manager/dashboard.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _controller = DashboardBottomNavManager();
  final _authController = UserAuthManager(sl());

  @override
  Widget build(BuildContext context) {
    return BlocSelector(
      bloc: _authController,
      selector: (UserAuthState state) => state.user?.role,
      builder: (_, role) {
        return BlocBuilder(
          bloc: _controller,
          builder: (_, DashboardBottomNavState state) => Scaffold(
            body: widget.shell,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              child: Icon(TablerIcons.home_link),
              onPressed: () {
                // @todo - assign/add new property
              },
            ),
            bottomNavigationBar: Builder(
              builder: (_) {
                if (role == null) const SizedBox.shrink();
                return BottomNavigationBar(
                  items: _buildNavigationItems(role!),
                  onTap: _controller.updateIndex,
                  currentIndex: state.currentIndex,
                  useLegacyColorScheme: false,
                );
              },
            ),
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> _buildNavigationItems(UserRole role) {
    switch (role) {
      case UserRole.owner:
        return const [
          BottomNavigationBarItem(icon: Icon(TablerIcons.home_2), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.credit_card), label: 'Payments'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.notification), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.settings_cog), label: 'Profile'),
        ];
      case UserRole.officer:
        return const [
          BottomNavigationBarItem(icon: Icon(TablerIcons.home_2), label: 'Assigned'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.notification), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(TablerIcons.settings_cog), label: 'Profile'),
        ];
    }
  }
}
