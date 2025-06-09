import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void infoLog(String msg){
  if(!kDebugMode) return;
  logger.i(msg);
}