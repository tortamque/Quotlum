import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotlum/config/theme/colors.dart';

class NetworkController extends GetxController{
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      Get.rawSnackbar(
        messageText: Text(
          'Internet connection is lost :(\nCan\'t get new awesome quotes for you',
          style: TextStyle(
            color: CustomColors.secondaryColor,
            fontSize: 18
          )
        ),
        isDismissible: false,
        duration: const Duration(days: 1),
        backgroundColor: Colors.red[400]!,
        icon : Icon(Icons.wifi_off, color: CustomColors.secondaryColor, size: 35,),
        margin: EdgeInsets.zero,
        snackStyle: SnackStyle.GROUNDED
      );
    } 
    else {
      if (Get.isSnackbarOpen) {
        Get.closeCurrentSnackbar();
      }
    }
  }
}