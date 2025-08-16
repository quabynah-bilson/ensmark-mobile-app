import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:mobile/features/shared/presentation/widgets/bottom.nav.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

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
              return CustomBottomNavBar(
                currentIndex: widget.shell.currentIndex,
                onTap: (index) => widget.shell.goBranch(index),
                onPostTap: () {
                  //!todo: Handle post/add property action
                  // You can navigate to a property creation screen or show a modal
                  context.showSnackBar('Add Property feature coming soon!');
                },
              );
            },
          ),
        );
      },
    );
  }
}
