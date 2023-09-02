import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstContent extends StatelessWidget {
  const FirstContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // NOTE: Sizing Configuration for Responsive Builder
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 25
                : 60;
        double descSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 15
                : 21;
        double extraSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 15
                : 40;
        CrossAxisAlignment crossAxisType =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center;
        return SafeArea(
          child: Container(
            width: 600,
            child: Column(
              crossAxisAlignment: crossAxisType,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Software Engineer,',
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w600,
                    fontSize: titleSize,
                    height: 0.9,
                  ),
                  textAlign: textAlignment,
                ),
                Text(
                  ' Mobile.',
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w600,
                    fontSize: extraSize,
                    height: 0.9,
                    color: Colors.grey,
                  ),
                  textAlign: textAlignment,
                ),
                SizedBox(height: 25),
                Text(
                  '© 2023 Elfaael. All Rights Reserved.',
                  style: GoogleFonts.rubik(
                    fontSize: 16,
                    height: 1.7,
                    color: Colors.grey,
                  ),
                  textAlign: textAlignment,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
