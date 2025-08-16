import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/mixins/validators.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/presentation/manager/password.dart';
import 'package:mobile/features/shared/presentation/widgets/button.dart';
import 'package:mobile/features/shared/presentation/widgets/text.field.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX, LoadingIndicator;
import 'package:styled_widget/styled_widget.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key, required this.args});

  final CreatePasswordPageArgs args;

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> with ValidationMixin {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  late final _createPasswordManager = context.read<CreatePasswordManager>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _createPasswordManager,
      listener: (context, CreatePasswordState state) {
        if (!mounted) return;

        if (state.errorMessage != null) {
          context.showSnackBar(
            state.errorMessage!,
            context.colorScheme.errorContainer,
            context.colorScheme.onErrorContainer,
          );
        }

        if (state.user != null) {
          context.go(AppRoutes.dashboard);
        }
      },
      child: BlocSelector(
        bloc: _createPasswordManager,
        selector: (CreatePasswordState state) => state,
        builder: (context, CreatePasswordState state) {
          return LoadingIndicator(
            isLoading: state.loading,
            child: Scaffold(
              appBar: AppBar(title: Text('Create your password')),
              body: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 24,
                children: [
                  Text(
                    'Create a password to login to your account',
                    style: context.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 16,
                      children: [
                        AppTextField(
                          labelText: 'Password',
                          controller: _passwordController,
                          validator: validatePassword,
                          fieldType: AppTextFieldType.password,
                        ),
                        AppTextField(
                          labelText: 'Confirm Password',
                          controller: _confirmPasswordController,
                          validator: validatePassword,
                          fieldType: AppTextFieldType.password,
                        ),
                      ],
                    ),
                  ),
                  AppButton(
                    text: 'Create password',
                    isLoading: state.loading,
                    onPressed: () async {
                      final validated = _formKey.currentState?.validate() ?? false;
                      if (!validated) return;
                      _formKey.currentState?.save();
                      _createPasswordManager.createPassword(
                        _passwordController.text.trim(),
                        _confirmPasswordController.text.trim(),
                        widget.args.token,
                      );
                    },
                  ),
                ],
              ).padding(all: 24),
            ),
          );
        },
      ),
    );
  }
}
