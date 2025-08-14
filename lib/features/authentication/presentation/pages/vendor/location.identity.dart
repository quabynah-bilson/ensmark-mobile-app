part of '../register.vendor.dart';

class _LocationIdentityInfoSheet extends StatefulWidget {
  const _LocationIdentityInfoSheet(this.manager);
  final VendorOnboardingManager manager;

  @override
  State<_LocationIdentityInfoSheet> createState() => __LocationIdentityInfoSheetState();
}

class __LocationIdentityInfoSheetState extends State<_LocationIdentityInfoSheet> with ValidationMixin {
  final _formKey = GlobalKey<FormState>(debugLabel: 'location-identity-form');

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector(
      bloc: widget.manager,
      selector: (VendorOnboardingState state) => state,
      builder: (_, VendorOnboardingState state) {
        return Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: AppBar(title: Text('Address & Identity')),
          body: SingleChildScrollView(
            controller: ModalScrollController.of(context),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 24,
              children: [
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 16,
                    children: [
                      AppTextField(
                        labelText: 'Country',
                        fieldType: AppTextFieldType.selector,
                        items: const ['GH', 'NG', 'US', 'GB', 'DE'],
                        displayText: (v) => v,
                        initialValue: state.locationIdentity.country,
                        onItemSelected: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(country: value)),
                        ),
                        validator: validateRequired,
                      ),
                      AppTextField(
                        labelText: 'Region/State',
                        fieldType: AppTextFieldType.text,
                        initialValue: state.locationIdentity.region,
                        onChanged: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(region: value)),
                        ),
                        validator: validateRequired,
                        textCapitalization: TextCapitalization.words,
                      ),
                      AppTextField(
                        labelText: 'Town/City',
                        initialValue: state.locationIdentity.town,
                        onChanged: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(town: value)),
                        ),
                        validator: validateRequired,
                        textCapitalization: TextCapitalization.words,
                      ),
                      AppTextField(
                        labelText: 'Street Name',
                        initialValue: state.locationIdentity.street,
                        onChanged: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(street: value)),
                        ),
                        validator: validateRequired,
                        textCapitalization: TextCapitalization.words,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          AppTextField(
                            labelText: 'House Number',
                            fieldType: AppTextFieldType.address,
                            initialValue: state.locationIdentity.houseNumber,
                            textCapitalization: TextCapitalization.characters,
                            onChanged: (value) => widget.manager.update(
                              state.copyWith(locationIdentity: state.locationIdentity.copyWith(houseNumber: value)),
                            ),
                            validator: validateRequired,
                          ).expanded(),
                          AppTextField(
                            labelText: 'Digital Address',
                            fieldType: AppTextFieldType.address,
                            initialValue: state.locationIdentity.digitalCode,
                            textCapitalization: TextCapitalization.characters,
                            onChanged: (value) => widget.manager.update(
                              state.copyWith(locationIdentity: state.locationIdentity.copyWith(digitalCode: value)),
                            ),
                            validator: validateRequired,
                          ).expanded(),
                        ],
                      ),
                      AppTextField(
                        labelText: 'Landmark',
                        required: false,
                        initialValue: state.locationIdentity.landmark,
                        fieldType: AppTextFieldType.address,
                        textCapitalization: TextCapitalization.words,
                        onChanged: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(landmark: value)),
                        ),
                      ),
                      AppTextField(
                        labelText: 'Tax ID Number',
                        initialValue: state.locationIdentity.taxIdentificationNumber,
                        textCapitalization: TextCapitalization.characters,
                        fieldType: AppTextFieldType.identity,
                        onChanged: (value) => widget.manager.update(
                          state.copyWith(
                            locationIdentity: state.locationIdentity.copyWith(taxIdentificationNumber: value),
                          ),
                        ),
                        validator: validateRequired,
                      ),
                      AppTextField<IdentityType>(
                        labelText: 'ID Type',
                        fieldType: AppTextFieldType.selector,
                        items: IdentityType.values.toList(),
                        displayText: (v) => v.label,
                        initialValue: state.locationIdentity.idType.label,
                        onItemSelected: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(idType: value)),
                        ),
                        validator: validateRequired,
                      ),
                      AppTextField(
                        labelText: 'ID Number',
                        fieldType: AppTextFieldType.identity,
                        initialValue: state.locationIdentity.idNumber,
                        helperText: '* Enter values without hyphens',
                        textCapitalization: TextCapitalization.characters,
                        onChanged: (value) => widget.manager.update(
                          state.copyWith(locationIdentity: state.locationIdentity.copyWith(idNumber: value)),
                        ),
                        validator: validateRequired,
                      ),
                    ],
                  ),
                ),
                AppButton(
                  text: 'Submit',
                  onPressed: () {
                    final validated = _formKey.currentState?.validate() ?? false;
                    if (!validated) return;
                    widget.manager.submit();
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
