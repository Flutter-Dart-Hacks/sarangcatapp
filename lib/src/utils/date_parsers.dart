import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

Future<String> parseTanggalPembuatanAplikasi() async {
  initializeDateFormatting('id');

  DateTime datetimeNow = DateTime.now();
  String dateParsed = DateFormat('yyyy', 'id').format(datetimeNow);

  return Future.delayed(const Duration(seconds: 0), () {
    return dateParsed;
  });
}

Future<String> getTanggalSekarangParsed() async {
  initializeDateFormatting('id');

  DateTime datetimeNow = DateTime.now();
  String dateParsed =
      DateFormat('EEEE, dd MMMM yyyy', 'id').format(datetimeNow);

  return Future.delayed(const Duration(seconds: 0), () {
    return dateParsed;
  });
}
