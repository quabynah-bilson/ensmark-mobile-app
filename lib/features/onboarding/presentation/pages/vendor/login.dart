part of '../register.vendor.dart';

class _VendorLoginSheet extends StatefulWidget {
  const _VendorLoginSheet();

  @override
  State<_VendorLoginSheet> createState() => _VendorLoginSheetState();
}

class _VendorLoginSheetState extends State<_VendorLoginSheet> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'login-form');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  TextButton(
                    onPressed: () async {
                      final hasRequestedForReset = await showCupertinoModalBottomSheet(
                        context: context,
                        builder: (_) => _ForgotPasswordSheet(),
                      );
                      debugPrint('has requested for reset: $hasRequestedForReset');
                      if (hasRequestedForReset is bool && hasRequestedForReset) {
                        //!todo - show snackbar message
                      }
                    },
                    child: Text('Forgot password?'),
                  ).alignment(Alignment.centerRight),
                ],
              ),
            ),
            AppButton(
              text: 'Submit',
              onPressed: () async {
                final validated = _formKey.currentState?.validate() ?? false;
                if (!validated) return;
                _formKey.currentState?.save();
                //!todo - trigger login action from bloc
              },
            ),
          ],
        ),
      ),
    );
  }
}
