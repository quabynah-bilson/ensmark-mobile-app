/// An abstract base class that represents a general purpose exception with an optional entity of type [T].
abstract class BaseException<T> {
  /// The reason for the exception.
  final String reason;

  /// Optional entity involved in the exception.
  T? get entity => null;

  /// Creates a new [BaseException] with the given [reason].
  const BaseException(this.reason);
}
