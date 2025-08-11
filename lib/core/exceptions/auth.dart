import 'package:mobile/core/exceptions/base.dart';
import 'package:mobile/features/authentication/domain/entities/user.dart' show AppUser;

sealed class AuthException extends BaseException<AppUser> {
  AuthException(super.reason);
}

final class LoginFailedException extends AuthException {
  LoginFailedException() : super('Sorry! We could not verify this username and password. Please try again');
}

final class RegistrationFailedException extends AuthException {
  RegistrationFailedException()
    : super('Sorry! We could not complete your registration at this time. Please try again later');
}

final class UserNotFoundException extends AuthException {
  UserNotFoundException() : super('We could not verify the user. Please try again later');
}

final class UserAlreadyExistsException extends AuthException {
  UserAlreadyExistsException()
    : super('The user with the given credentials already exists. Please check and try again');
}
