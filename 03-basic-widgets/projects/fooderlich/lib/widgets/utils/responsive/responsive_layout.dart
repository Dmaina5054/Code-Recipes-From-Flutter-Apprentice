import 'package:flutter/material.dart';
import 'package:fooderlich/widgets/pages/desktop_page.dart';
import 'package:fooderlich/widgets/pages/mobile_page.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveLayout({Key? key, required this.mobileBody, required this.desktopBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (BuildContext context, constraints){
      if(constraints.maxWidth < 600){
        return MobilePage();
      }
      else{
        return DesktopBody();
      }
    });
  }
}
