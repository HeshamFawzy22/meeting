import 'package:flutter/material.dart';
import '../presentaion/appointment_details_voice_call/appointment_details_voice_call_screen.dart';
import '../presentaion/my_appointment_voice_call_run/my_appointment_voice_call_run_screen.dart';

class AppRoutes{

  static const String appointmentDetailsVoiceCallScreen = '/';
  static const String myAppointmentVoiceCallRunScreen = '/my_appointment_voice_call_run_screen';

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (appointmentDetailsVoiceCallScreen):
        return MaterialPageRoute(
          builder: (_) => const AppointmentDetailsVoiceCallScreen(),
        );
      case (myAppointmentVoiceCallRunScreen):
        return MaterialPageRoute(
          builder: (_) => const MyAppointmentVoiceCallRunScreen(),
        );
    }
    return null;
  }
}