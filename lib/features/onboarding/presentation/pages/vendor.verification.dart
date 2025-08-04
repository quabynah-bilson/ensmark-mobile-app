import 'package:flutter/material.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX;
import 'package:mobile/core/routing/router.dart';

class VendorVerificationPage extends StatefulWidget {
  const VendorVerificationPage({super.key, required this.args});

  final VendorVerificationPageArgs args;

  @override
  State<VendorVerificationPage> createState() => _VendorVerificationPageState();
}

class _VendorVerificationPageState extends State<VendorVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: context.colorScheme.primaryContainer));
  }
}
