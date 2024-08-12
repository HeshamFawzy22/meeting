import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../routes/app_routes.dart';

class AppointmentDetailsVoiceCallScreen extends StatelessWidget {
  const AppointmentDetailsVoiceCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 18,
          color: Color(0XFF101010),
        ),
        title: const Text(
          'My Appointment',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 8,
              ),
              child: Column(
                children: [
                  _buildDoctorInformation(context),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildContactInformation(context),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildAboutMeInformation(context),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildPatientInforamtion(context),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildStartVoiceCallButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildDoctorInformation(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0X0A000000),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset("assets/images/doctor.png"),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/fav_icon.svg',
                      height: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Elia Ana",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Cardiologists | Mars Hospital",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF878787),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 7.0,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/star_icon.svg', // Path to the SVG asset
                      height: 20.0, // Set the height of the SVG
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text(
                      '5.0 (332 reviews)',
                      style: TextStyle(
                          color: Color(0XFF101010),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildContactInformation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Patients
        _buildDoctorStatisticsWidget('assets/images/patients_icon.svg', '658+', 'Patients'),
        // Years expert
        _buildDoctorStatisticsWidget('assets/images/years_expert_icon.svg', '11+', 'Years expert'),
        // Rating
        _buildDoctorStatisticsWidget('assets/images/rating_icon.svg', '5.0', 'Rating'),
        // Reviews
        _buildDoctorStatisticsWidget('assets/images/reviews_icon.svg', '300+', 'Reviews'),
      ]
    );
  }

  _buildAboutMeInformation(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          maxLines: 3,
          "Dr. Carly Angel is the top most immunologists specialist in Crist Hospital in London, UK. She achived several awards for her wonderful contribution",
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF878787)),
        ),
      ],
    );
  }

  _buildPatientInforamtion(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Patient Information",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            maxLines: 1,
            "Full Name : Richard Lee",
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF878787)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Gender : Male",
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF878787),
            ),
          ),
        ],
      ),
    );
  }

  _buildStartVoiceCallButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0XFF4C4DDC), // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 20.0), // Padding inside the button
      ),
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.myAppointmentVoiceCallRunScreen);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/phone_icon.svg', // Path to the SVG asset
            height: 20.0, // Set the height of the SVG
          ),

          const SizedBox(width: 10.0), // Space between icon and text
          const Text(
            'Start Voice Call (14.30 - 15.00 PM)',
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }

  _buildDoctorStatisticsWidget(String image , String stringNumber , String text) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0XFFF5F5FF),
          ),
          child: Center(
            child: SvgPicture.asset(
              image, // Path to the SVG asset
              height: 24.0, // Set the height of the SVG
            ),
          ),
        ),
        Text(
          stringNumber,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF878787)),
        ),
      ],
    );
  }
}
