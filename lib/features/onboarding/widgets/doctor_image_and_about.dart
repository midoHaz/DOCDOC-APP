import 'package:advanced_sessions/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndAbout extends StatelessWidget {
  const DoctorImageAndAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                // ignore: deprecated_member_use
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, 0.4],
            ),
          ),
          child: Image.asset(
            'assets/images/onboarding_doctor.png',
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor Appointment App',
            style: TextStyles.font32BoldBlue.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
