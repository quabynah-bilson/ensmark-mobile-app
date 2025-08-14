part of '../register.vendor.dart';

class _PersonalInfoSheet extends StatefulWidget {
  const _PersonalInfoSheet();

  @override
  State<_PersonalInfoSheet> createState() => _PersonalInfoSheetState();
}

class _PersonalInfoSheetState extends State<_PersonalInfoSheet> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'personal-info-form');
  late final _manager = context.read<VendorOnboardingManager>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
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
                autovalidateMode: AutovalidateMode.onUnfocus,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    AppTextField(
                      labelText: 'Account Type',
                      initialValue: state.personalInfo.type.label,
                      validator: validateRequired,
                      fieldType: AppTextFieldType.selector,
                      displayText: (type) => type.label,
                      onItemSelected: (type) =>
                          _manager.update(state.copyWith(personalInfo: state.personalInfo.copyWith(type: type))),
                      items: OwnerType.values,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 16,
                      children: [
                        AppTextField(
                          labelText: 'First Name',
                          initialValue: state.personalInfo.firstName,
                          onChanged: (value) {
                            _manager.update(
                              state.copyWith(personalInfo: state.personalInfo.copyWith(firstName: value)),
                            );
                          },
                          required: true,
                          validator: validateRequired,
                          textCapitalization: TextCapitalization.words,
                        ).expanded(),
                        AppTextField(
                          labelText: 'Last Name',
                          initialValue: state.personalInfo.lastName,
                          onChanged: (value) {
                            _manager.update(state.copyWith(personalInfo: state.personalInfo.copyWith(lastName: value)));
                          },
                          validator: validateRequired,
                          required: true,
                          textCapitalization: TextCapitalization.words,
                        ).expanded(),
                      ],
                    ),
                    AppTextField(
                      labelText: 'Email Address',
                      initialValue: state.personalInfo.username,
                      onChanged: (value) {
                        _manager.update(state.copyWith(personalInfo: state.personalInfo.copyWith(username: value)));
                      },
                      validator: validateEmail,
                      fieldType: AppTextFieldType.email,
                    ),
                    AppTextField(
                      labelText: 'Phone Number',
                      initialValue: state.personalInfo.phoneNumber,
                      onChanged: (value) {
                        _manager.update(state.copyWith(personalInfo: state.personalInfo.copyWith(phoneNumber: value)));
                      },
                      validator: (value) => combineValidators(value, [validateRequired, validatePhoneNumber]),
                      fieldType: AppTextFieldType.number,
                    ),
                    if (state.personalInfo.type == OwnerType.individual) ...{
                      AppTextField(
                        labelText: 'Date of Birth',
                        initialValue: state.personalInfo.dateOfBirth?.formatted,
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
                          _manager.update(
                            state.copyWith(personalInfo: state.personalInfo.copyWith(dateOfBirth: selectedDate)),
                          );
                        },
                        validator: (value) => combineValidators(value, [validateDate]),
                      ),
                    },
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
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
