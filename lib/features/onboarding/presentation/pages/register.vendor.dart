import 'package:flutter/material.dart';
import 'package:mobile/core/extensions.dart';

class RegisterVendorPage extends StatefulWidget {
  const RegisterVendorPage({super.key});

  @override
  State<RegisterVendorPage> createState() => _RegisterVendorPageState();
}

class _RegisterVendorPageState extends State<RegisterVendorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: context.colorScheme.secondaryContainer));
  }
}
