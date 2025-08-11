part of '../register.vendor.dart';

class _ForgotPasswordSheet extends StatefulWidget {
  const _ForgotPasswordSheet();

  @override
  State<_ForgotPasswordSheet> createState() => _ForgotPasswordSheetState();
}

class _ForgotPasswordSheetState extends State<_ForgotPasswordSheet> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'password-reset-form');
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(title: Text('Recover your password')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 24,
        children: [
          Text(
            'Provide your email address to receive a one time password (OTP) to reset your password',
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Form(
            key: _formKey,
            child: AppTextField(
              labelText: 'Email Address',
              controller: _emailController,
              validator: validateEmail,
              fieldType: AppTextFieldType.email,
            ),
          ),
          AppButton(
            text: 'Send reset link',
            onPressed: () async {
              final validated = _formKey.currentState?.validate() ?? false;
              if (!validated) return;
              _formKey.currentState?.save();
              //!todo - trigger password reset action from bloc
            },
          ),
        ],
      ).padding(all: 24),
    );
  }
}
