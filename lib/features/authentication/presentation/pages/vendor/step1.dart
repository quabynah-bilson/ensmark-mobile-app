part of '../register.vendor.dart';

class _PersonalInfoSheet extends StatefulWidget {
  const _PersonalInfoSheet();

  @override
  State<_PersonalInfoSheet> createState() => _PersonalInfoSheetState();
}

class _PersonalInfoSheetState extends State<_PersonalInfoSheet> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'personal-info-form');
  final _dobController = TextEditingController();
  final _accountTypeController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _emailController = TextEditingController();
  DateTime? _dob;
  final _manager = VendorOnboardingManager();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _dobController.dispose();
    _accountTypeController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: _manager,
      listener: (_, state) {
        if (!mounted) return;

        //!todo - handle other states
      },
      builder: (_, VendorOnboardingState state) => Scaffold(
        backgroundColor: context.colorScheme.surface,
        appBar: AppBar(title: Text('Personal Information')),
        body: SingleChildScrollView(
          controller: ModalScrollController.of(context),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              Text(
                'Tell us a bit about yourself so we can get to know you better.',
                style: context.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    AppTextField(
                      labelText: 'Account Type',
                      controller: _accountTypeController,
                      validator: validateRequired,
                      fieldType: AppTextFieldType.selector,
                      displayText: (type) => type.label,
                      onItemSelected: (type) {
                        //!todo - item selected
                      },
                      items: OwnerType.values,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 16,
                      children: [
                        AppTextField(
                          labelText: 'First Name',
                          controller: _firstNameController,
                          onChanged: (value) {
                            //!todo - update state
                          },
                          required: true,
                          validator: validateRequired,
                          textCapitalization: TextCapitalization.words,
                        ).expanded(),
                        AppTextField(
                          labelText: 'Last Name',
                          controller: _lastNameController,
                          onChanged: (value) {
                            //!todo - update state
                          },
                          validator: validateRequired,
                          required: true,
                          textCapitalization: TextCapitalization.words,
                        ).expanded(),
                      ],
                    ),
                    AppTextField(
                      labelText: 'Email Address',
                      controller: _emailController,
                      onChanged: (value) {
                        //!todo - update state
                      },
                      validator: validateEmail,
                      fieldType: AppTextFieldType.email,
                    ),
                    AppTextField(
                      labelText: 'Phone Number',
                      controller: _phoneNumberController,
                      onChanged: (value) {
                        //!todo - update state
                      },
                      validator: (value) => combineValidators(value, [validateRequired, validatePhoneNumber]),
                      fieldType: AppTextFieldType.number,
                    ),
                    AppTextField(
                      labelText: 'Date of Birth',
                      controller: _dobController,
                      readOnly: true,
                      required: false,
                      onTap: () async {
                        // must be at least 18 years old
                        final now = DateTime.now();
                        final selectedDate = await showDatePicker(
                          context: context,
                          firstDate: now.subtract(const Duration(days: 365 * 100)),
                          lastDate: now.subtract(const Duration(days: 365 * 18)),
                          initialDate: now.subtract(const Duration(days: 365 * 18)),
                          useRootNavigator: true,
                        );
                        if (selectedDate == null) return;
                        _dobController.text = selectedDate.formatted;
                        //!todo - update state
                        // _manager.state.
                      },
                      validator: (value) => combineValidators(value, [validateDate]),
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
                  _manager.submit();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
