import 'package:get/get.dart';
import 'package:solar/Controller/Homecontroller.dart';
import 'package:solar/Controller/contact_controller.dart';
import 'package:solar/Controller/industrycontrolller.dart';
import 'package:solar/Controller/mainlayoutcontroller.dart';
import 'package:solar/Controller/msmecontroller.dart';
import 'package:solar/Controller/residenrialcontroller.dart';
import 'package:solar/Controller/unitfreecontroller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainlayoutController(), permanent: true);
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}

class ResidentialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Residentialcontroller());
  }
}
class ContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ContactController());
  }
}

class MSMEBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MsmeController());
  }
}

class IndustryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(IndustryController());
  }
}
class UnitFreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(unitfreeController());
  }
}