import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MainController extends GetxController {
  final _isConnected = true.obs;
  late Box _boxMovies;
  bool get getIsConnected => _isConnected.value;

  late StreamSubscription<ConnectivityResult> subscription;

  MainController() {
    (Connectivity().checkConnectivity()).then((value) {
      _isConnected.value = value == ConnectivityResult.mobile ||
          value == ConnectivityResult.wifi;
      update();
    });
    Connectivity().onConnectivityChanged.listen((ConnectivityResult value) {
      _isConnected.value = value == ConnectivityResult.mobile ||
          value == ConnectivityResult.wifi;
      update();
      _openBox();
    });
  }

  @override
  void dispose() async {
    super.dispose();
    subscription.cancel();
    _closeBox();
  }

  _openBox() async {
    _boxMovies = await Hive.openBox('watchlist');
  }

  _closeBox() async {
    await _boxMovies.close();
  }
}
