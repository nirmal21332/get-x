import 'package:get/get.dart';

class CounterController extends GetxController{
RxBool Notification=false.obs;
switchcase(value){
  Notification.value=value;
}
}