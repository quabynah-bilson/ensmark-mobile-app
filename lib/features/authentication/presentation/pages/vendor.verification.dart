import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

class VendorVerificationPage extends StatefulWidget {
  const VendorVerificationPage({super.key, required this.args});

  final VendorVerificationPageArgs args;

  @override
  State<VendorVerificationPage> createState() => _VendorVerificationPageState();
}

class _VendorVerificationPageState extends State<VendorVerificationPage> {
  late final _authManager = context.read<UserAuthManager>();

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _authManager,
      listener: (_, UserAuthState state) {
        if (!mounted) return;

        if (state.errorMessage != null) {
          context.showSnackBar(
            state.errorMessage!,
            context.colorScheme.errorContainer,
            context.colorScheme.onErrorContainer,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Vendor Verification')),
        body: Container(
          color: context.colorScheme.primaryContainer,
          child: Text(widget.args.toString(), style: context.textTheme.bodyMedium),
        ),
      ),
    );
  }
}
