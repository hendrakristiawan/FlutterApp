import 'package:flutter_app/Config.dart';
import 'package:flutter_app/main.dart';

void main(){
  Config.setFlavor(Flavor.QA);
  mainDelegate();
}