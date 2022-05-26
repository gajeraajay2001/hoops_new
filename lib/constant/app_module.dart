import 'package:hoops_new_26_05/Utilities/customeDialogs.dart';
import 'package:kiwi/kiwi.dart';

part "app_module.g.dart";

abstract class AppModule {
  @Register.singleton(CustomDialogs)
  void configure();
}

void setup() {
  var appModule = _$AppModule();
  appModule.configure();
}
