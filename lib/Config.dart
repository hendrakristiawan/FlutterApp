import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Flavor{
  QA,
  Production
}

class Config{
  static Map<String,dynamic> _config;

  static void setFlavor(Flavor flavor){
    switch(flavor){
      case Flavor.QA:
        _config = Constant.qaConstants;
        break;
      case Flavor.Production:
        _config = Constant.prodConstants;
        break;
    }
  }

  static get urlGateWay {
    return _config[Constant._base_url_gateway];
  }

  static get url {
    return _config[Constant._base_url];
  }

  static get state {
    return _config[Constant._state];
  }

  static get colorState {
    return _config[Constant._color];
  }
}

class Constant{
  static const _base_url_gateway = "gateway";
  static const _base_url = "non-gateway";
  static const _state = "state";
  static const _color = "color";

  static Map<String,dynamic> qaConstants = {
    _base_url_gateway : "http://ini-qa-base-gateway.com/",
    _base_url : "http://ini-qa-base.com/",
    _state : "QA",
    _color : Colors.purpleAccent
  };

  static Map<String,dynamic> prodConstants = {
    _base_url_gateway : "http://ini-prod-base-gateway.com/",
    _base_url : "http://ini-prod-base.com/",
    _state : "Prod"
  };
}