part of '../register.vendor.dart';

class _BusinessInfoSheet extends StatefulWidget {
  const _BusinessInfoSheet(this.manager);
  final VendorOnboardingManager manager;

  @override
  State<_BusinessInfoSheet> createState() => _BusinessInfoSheetState();
}

class _BusinessInfoSheetState extends State<_BusinessInfoSheet> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'business-info-form');

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(title: Text('Business Information')),
      body: BlocSelector(
        bloc: widget.manager,
        selector: (VendorOnboardingState state) => state,
        builder: (_, VendorOnboardingState state) => SingleChildScrollView(
          controller: ModalScrollController.of(context),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              Text(
                'Provide your business registration and commencement details',
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
                      labelText: 'Business Registration Number',
                      initialValue: state.businessInfo.registrationNumber,
                      validator: validateRequired,
                      fieldType: AppTextFieldType.text,
                      onChanged: (value) {
                        widget.manager.update(
                          state.copyWith(businessInfo: state.businessInfo.copyWith(registrationNumber: value)),
                        );
                      },
                      textCapitalization: TextCapitalization.characters,
                    ),
                    AppTextField(
                      labelText: 'Date of Commencement',
                      initialValue: state.businessInfo.registrationDate?.formatted,
                      readOnly: true,
                      onTap: () async {
                        final now = DateTime.now();
                        final selectedDate = await showDatePicker(
                          context: context,
                          firstDate: now.subtract(const Duration(days: 365 * 30)),
                          lastDate: now,
                          initialDate: now,
                          useRootNavigator: true,
                        );
                        if (selectedDate == null) return;
                        widget.manager.update(
                          state.copyWith(businessInfo: state.businessInfo.copyWith(registrationDate: selectedDate)),
                        );
                      },
                      validator: (value) => combineValidators(value, [validateRequired, validateDate]),
                    ),
                  ],
                ),
              ),
              AppButton(
                text: 'Submit',
                onPressed: () {
                  final validated = _formKey.currentState?.validate() ?? false;
                  if (!validated) return;
                  _formKey.currentState?.save();
                  widget.manager.submit();
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
