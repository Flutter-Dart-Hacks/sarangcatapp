part of 'date_appdibuat_splash_cubit.dart';

sealed class DateAppdibuatSplashState extends Equatable {
  const DateAppdibuatSplashState();

  @override
  List<Object> get props => [];
}

final class DateAppdibuatSplashInitial extends DateAppdibuatSplashState {}

final class DateAppdibuatSplashLoading extends DateAppdibuatSplashState {}

final class DateAppdibuatSplashSuccess extends DateAppdibuatSplashState {
  final String strTahunDibuat;

  const DateAppdibuatSplashSuccess(this.strTahunDibuat);

  @override
  List<Object> get props => [strTahunDibuat];

  @override
  bool? get stringify => true;
}

final class DateAppdibuatSplashFailed extends DateAppdibuatSplashState {
  final String errorMessage;

  const DateAppdibuatSplashFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  bool? get stringify => true;
}
