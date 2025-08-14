part of '../register.vendor.dart';

class _RevenueItemsSheet extends StatefulWidget {
  const _RevenueItemsSheet(this.manager, this.revenueItems);
  final VendorOnboardingManager manager;
  final List<RevenueItem> revenueItems;

  @override
  State<_RevenueItemsSheet> createState() => _RevenueItemsSheetState();
}

class _RevenueItemsSheetState extends State<_RevenueItemsSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector(
      bloc: widget.manager,
      selector: (VendorOnboardingState state) => state,
      builder: (_, VendorOnboardingState state) {
        final items = widget.revenueItems;
        return Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: AppBar(title: Text('Select Revenue Items')),
          body: SingleChildScrollView(
            controller: ModalScrollController.of(context),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                Text('Choose all that apply:', style: context.textTheme.titleMedium),
                if (items.isEmpty)
                  Text('No items available', style: context.textTheme.bodyMedium)
                else
                  ...items.map((ri) {
                    final selected = state.revenueItems.revenueItems.any((e) => e.guid == ri.guid && e.code.isNotEmpty);
                    return CheckboxListTile(
                      value: selected,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(ri.description),
                      subtitle: Text(ri.code),
                      onChanged: (checked) {
                        final current = state.revenueItems.revenueItems;
                        if (checked == true) {
                          final updated = [...current];
                          if (!updated.any((e) => e.guid == ri.guid)) updated.add(ri);
                          widget.manager.update(
                            state.copyWith(revenueItems: state.revenueItems.copyWith(revenueItems: updated)),
                          );
                        } else {
                          final updated = current.where((e) => e.guid != ri.guid).toList();
                          widget.manager.update(
                            state.copyWith(revenueItems: state.revenueItems.copyWith(revenueItems: updated)),
                          );
                        }
                      },
                    );
                  }),
              ],
            ),
          ),
          bottomNavigationBar: AppButton(
            text: 'Submit',
            onPressed: () {
              widget.manager.submit();
              context.pop();
            },
          ).padding(horizontal: 24).safeArea(top: false),
        );
      },
    );
  }
}
