import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:generate_response/constants/svg_image.dart';

class NewColumn extends StatefulWidget {
  const NewColumn({Key? key}) : super(key: key);

  @override
  State<NewColumn> createState() => _NewColumnState();
}

class _NewColumnState extends State<NewColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Last Prompts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                _buildIconButton(
                  onPressed: () {
                    // Add functionality for the forward button
                  },
                  icon: Icons.arrow_forward_ios_outlined,
                  color: Color(0xfff242728),
                  iconSize: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required VoidCallback onPressed,
    required IconData icon,
    required Color color,
    double iconSize = 30,
  }) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Make the button transparent
          elevation: 0,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
