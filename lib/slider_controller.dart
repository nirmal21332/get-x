import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SliderController extends GetxController{
 RxDouble opacity=.4.obs;
 setOpacity(double value){
   opacity.value=value;
 }

}