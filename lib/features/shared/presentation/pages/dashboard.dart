import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:shared_utils/shared_utils.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late final _authController = context.read<UserAuthManager>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _authController.checkAuthStatus());
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector(
      bloc: _authController,
      selector: (UserAuthState state) => state.user,
      builder: (_, AppUser? user) {
        return Scaffold(
          body: widget.shell,
          // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
          // floatingActionButton: FloatingActionButton.extended(
          //   icon: Icon(TablerIcons.home_link),
          //   label: Text('Add Property'),
          //   onPressed: () {
          //     //todo: assign/add new property
          //   },
          // ),
          bottomNavigationBar: Builder(
            builder: (_) {
              if (user?.role == null) return const SizedBox.shrink();
              return BottomNavigationBar(
                items: _buildNavigationItems(user!.role),
                onTap: (index) => widget.shell.goBranch(index),
                currentIndex: widget.shell.currentIndex,
                type: BottomNavigationBarType.fixed,
                useLegacyColorScheme: false,
              );
            },
          ),
        );
      },
    );
  }

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
}
