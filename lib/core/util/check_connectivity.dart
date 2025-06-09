

import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

Future<bool> isInternetAvailable() async {
  var connectivityResult = await Connectivity().checkConnectivity();

  if (connectivityResult == ConnectivityResult.none) {
    return false; // No WiFi or mobile
  }

  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true; // Actually connected to internet
    }
  } catch (e) {
    return false;
  }

  return false;
}

Stream<bool> internetStatusStream() async* {
  await for (var result in Connectivity().onConnectivityChanged) {
    if (result.contains(ConnectivityResult.mobile) ) {
      yield true;
    } else if(result.contains(ConnectivityResult.wifi)) {
      yield true;
    }
      else {
      try {
        final lookup = await InternetAddress.lookup('google.com');
        yield lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty;
      } catch (_) {
        yield false;
      }
    }
  }
}
