import 'package:flutter/material.dart';
import 'package:generate_response/constants/images.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        top: 30,
        right: screenWidth *
            0.05, // Adjust the right padding according to your preference
      ),
      child: Container(
        alignment: Alignment.centerLeft,
        width: screenWidth * 0.2, // Adjust the width according to screen size
        decoration: BoxDecoration(
          color: const Color(0xfff242728),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(profile),
              radius: screenWidth * 0.05, // Adjust size based on screen width
            ),
            SizedBox(height: screenHeight * 0.01),
            Divider(
              color: Colors.grey,
            ),
            _buildIconButton(Icons.home, screenWidth),
            SizedBox(height: screenHeight * 0.01),
            _buildIconButton(Icons.drive_folder_upload_rounded, screenWidth),
            SizedBox(height: screenHeight * 0.01),
            _buildIconButton(Icons.settings, screenWidth),
            SizedBox(height: screenHeight * 0.01),
            _buildIconButton(Icons.language_outlined, screenWidth),
            SizedBox(height: screenHeight * 0.01),
            _buildIconButton(Icons.map_outlined, screenWidth),
            SizedBox(height: screenHeight * 0.01),
            _buildIconButton(Icons.link, screenWidth),
            SizedBox(height: screenHeight * 0.01),
            _buildIconButton(Icons.more_horiz_outlined, screenWidth),
            SizedBox(height: screenHeight * 0.20),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, double screenWidth) {
    return IconButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      icon: Icon(
        icon,
        size: screenWidth * 0.1, // Adjust icon size based on screen width
      ),
    );
  }
}
