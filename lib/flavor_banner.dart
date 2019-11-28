import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Config.dart';

class FlavorBanner extends StatelessWidget{
  final Widget child;
  BannerConfig bannerConfig;
  FlavorBanner({@required this.child});

  @override
  Widget build(BuildContext context) {
    if (Config.state == Flavor.Production) return child;
    bannerConfig = _getDefaultBanner();
    return Stack(
      children: <Widget>[
        child,
        _widgetBanner(context)
      ],
    );
  }

  Widget _widgetBanner(BuildContext context){
    return Container(
      width: 50,
      height :50,
      child : CustomPaint(
        painter: BannerPainter(
            message: bannerConfig.name,
            location: BannerLocation.topStart,
            color: bannerConfig.color
        ),
      )
    );
  }

  BannerConfig _getDefaultBanner() {
    return BannerConfig(
        Config.state,
        Config.colorState
    );
  }
}

class BannerConfig{
  final String name;
  final Color color;
  BannerConfig(this.name, this.color);

}