import 'package:logger/logger.dart';

class AppLogger {
  static void log(dynamic message) {
    Logger(
        filter: null,
        output: null,
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 5,
          lineLength: 50,
          colors: true,
          printEmojis: true,
        )).i(message);
  }
}
