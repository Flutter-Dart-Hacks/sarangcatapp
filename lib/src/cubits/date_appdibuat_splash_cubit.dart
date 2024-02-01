import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sarangcatapp/src/utils/date_parsers.dart';

part 'date_appdibuat_splash_state.dart';

class DateAppdibuatSplashCubit extends Cubit<DateAppdibuatSplashState> {
  DateAppdibuatSplashCubit() : super(DateAppdibuatSplashInitial());

  void getTanggalPembuatanSplashScreen() async {
    try {
      String strTanggalPembuatan = await parseTanggalPembuatanAplikasi();
      emit(DateAppdibuatSplashSuccess(strTanggalPembuatan));
    } catch (err) {
      emit(DateAppdibuatSplashFailed(err.toString()));
    }
  }
}
