import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/di/injector.dart';
import 'package:mobile/core/mixins/validators.dart';
import 'package:mobile/core/routing/router.dart';
import 'package:mobile/features/authentication/domain/entities/user.role.dart';
import 'package:mobile/features/authentication/presentation/manager/auth.dart' show UserAuthManager, UserAuthState;
import 'package:mobile/features/shared/presentation/widgets/button.dart';
import 'package:mobile/features/shared/presentation/widgets/text.field.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_utils/shared_utils.dart' show ContextX, LoadingIndicator;

class LoginRevenueOfficerPage extends StatefulWidget {
  const LoginRevenueOfficerPage({super.key});

  @override
  State<LoginRevenueOfficerPage> createState() => _LoginRevenueOfficerPageState();
}

class _LoginRevenueOfficerPageState extends State<LoginRevenueOfficerPage> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'officer-login-form');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authController = UserAuthManager(sl());

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: _authController,
      listener: (_, UserAuthState state) {
        if (state.errorMessage != null) context.showSnackBar(state.errorMessage!);

        if (state.user?.role != null) context.go(AppRoutes.dashboard);
      },
      builder: (_, UserAuthState state) => LoadingIndicator(
        isLoading: state.authenticating,
        message: 'Authenticating...',
        child: Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: AppBar(title: Text('Sign In')),
          body: SingleChildScrollView(
            controller: ModalScrollController.of(context),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 24,
              children: [
                Text(
                  'Please sign in to securely access your account and continue managing your services.',
                  style: context.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 16,
                    children: [
                      AppTextField(
                        labelText: 'Email Address',
                        controller: _emailController,
                        validator: validateEmail,
                        fieldType: AppTextFieldType.email,
                      ),
                      AppTextField(
                        labelText: 'Password',
                        controller: _passwordController,
                        validator: validatePassword,
                        fieldType: AppTextFieldType.password,
                      ),
                    ],
                  ),
                ),
                AppButton(
                  text: 'Submit',
                  onPressed: () async {
                    final validated = _formKey.currentState?.validate() ?? false;
                    if (!validated) return;
                    _formKey.currentState?.save();
                    await _authController.login(
                      role: UserRole.officer,
                      username: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
