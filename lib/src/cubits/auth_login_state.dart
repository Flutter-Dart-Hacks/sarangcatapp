part of 'auth_login_cubit.dart';

sealed class AuthLoginState extends Equatable {
  const AuthLoginState();

  @override
  List<Object> get props => [];
}

final class AuthLoginInitial extends AuthLoginState {}

final class AuthLoginLoading extends AuthLoginState {}

final class AuthLoginSuccess extends AuthLoginState {}

final class AuthLoginFailed extends AuthLoginState {
  final String errorMessage;

  const AuthLoginFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  bool? get stringify => true;
}
