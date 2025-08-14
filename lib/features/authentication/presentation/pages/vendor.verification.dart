import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;
import 'package:styled_widget/styled_widget.dart';

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
          color: context.colorScheme.tertiary,
          child: Text(widget.args.params.toString(), style: context.textTheme.bodyMedium)
              .gestures(
                onTap: () => showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return Container(height: 500, width: context.width, color: context.colorScheme.surface);
                  },
                ),
              )
              .center(),
        ),
      ),
    );
  }
}
