  import 'dart:io';

  import 'package:connectivity_plus/connectivity_plus.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:injectable/injectable.dart';


  @singleton
  class InternetCheacker extends Cubit<bool>{
    InternetCheacker() : super(false);

    void checkInternet() async {
      Connectivity().onConnectivityChanged.listen((event) async {
        if(event.contains(ConnectivityResult.wifi)){
          emit(true);
        }else if(event.contains(ConnectivityResult.mobile)){
          emit(true);
        }else{
          try {
            final lookup = await InternetAddress.lookup('google.com');
            emit(lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty);
          } catch (_) {
            emit(false);
          }
        }
      });
    }
  }