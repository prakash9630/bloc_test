  import 'dart:io';

  import 'package:connectivity_plus/connectivity_plus.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:injectable/injectable.dart';


  @singleton
  class InternetChecker extends Cubit<bool>{
    InternetChecker() : super(false);

    void checkInternet() async {
      Connectivity().onConnectivityChanged.listen((event) async {
        if(event.contains(ConnectivityResult.wifi)){
          final lookup = await InternetAddress.lookup('google.com');
          emit(lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty);
        }else if(event.contains(ConnectivityResult.mobile)){
          final lookup = await InternetAddress.lookup('google.com');
          emit(lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty);
        }else{
          emit(false);
        }
      });
    }
  }