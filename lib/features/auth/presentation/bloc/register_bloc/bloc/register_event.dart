
sealed class RegisterEvent {}

class OnRegister extends RegisterEvent{
  final String email;
  final String password;
  OnRegister(this.email, this.password);
}