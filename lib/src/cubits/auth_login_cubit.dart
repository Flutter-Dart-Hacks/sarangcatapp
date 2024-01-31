import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_login_state.dart';

class AuthLoginCubit extends Cubit<AuthLoginState> {
  AuthLoginCubit() : super(AuthLoginInitial());
}
