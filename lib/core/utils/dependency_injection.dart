import 'package:get/get.dart';
import 'package:quotlum/core/network/controller/network_controller.dart';

class DependencyInjection{
  static void init(){
    Get.put<NetworkController>(NetworkController(),permanent:true);
  }
}