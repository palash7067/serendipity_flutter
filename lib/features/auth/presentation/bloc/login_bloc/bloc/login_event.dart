
sealed class LoginEvent {}

class LoginInitiated extends LoginEvent{
  final String email;
  final String password;
  LoginInitiated(this.email, this.password);
}