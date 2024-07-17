import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt count =0.obs;

  void incrementValue()
  {
    count++;
  }

  void zeroValue()
  {
    count.value= 0;
  }

  void removeValue()
  {
    count--;
  }
}