import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppointmentVoiceCallRunScreen extends StatelessWidget {
  const MyAppointmentVoiceCallRunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/doctor.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Dr. Carly Angel",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5.0),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 8.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '19 : 00 Minute',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom call controls
          Positioned(
            bottom: 30.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Speaker button
                _buildCallButton('assets/images/speaker_icon.svg'),
                // Cancel button
                _buildCallButton('assets/images/cancel_call_icon.svg'),
                // Mute button
                _buildCallButton('assets/images/mute_icon.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildCallButton(String icon) {
    return MaterialButton(
      onPressed: () {},
      color: const Color(0XFFF5F5FF),
      padding: const EdgeInsets.all(20.0),
      shape: const CircleBorder(),
      child: SvgPicture.asset(
        icon,
        width: 20,
      ),
    );
  }
}
