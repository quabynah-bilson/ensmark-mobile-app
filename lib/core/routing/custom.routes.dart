part of 'router.dart';

class ModalBottomSheetPage<T> extends Page<T> {
  final Widget child;

  const ModalBottomSheetPage({required this.child, super.key});

  @override
  Route<T> createRoute(BuildContext context) =>
      MaterialWithModalsPageRoute<T>(settings: this, builder: (context) => child);
}
