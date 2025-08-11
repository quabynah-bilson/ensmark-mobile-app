import 'package:flutter/material.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;

class VendorVerificationPage extends StatefulWidget {
  const VendorVerificationPage({super.key, required this.args});

  final VendorVerificationPageArgs args;

  @override
  State<VendorVerificationPage> createState() => _VendorVerificationPageState();
}

class _VendorVerificationPageState extends State<VendorVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: context.colorScheme.primaryContainer,
        child: Text(widget.args.toString(), style: context.textTheme.titleMedium),
      ),
    );
  }
}
