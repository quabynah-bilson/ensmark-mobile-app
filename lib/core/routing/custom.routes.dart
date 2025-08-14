part of 'router.dart';

class ModalBottomSheetPage<T> extends MaterialPage<T> {
  const ModalBottomSheetPage({required super.child});

  @override
  Route<T> createRoute(BuildContext context) =>
      MaterialWithModalsPageRoute<T>(settings: this, builder: (context) => child);
}
