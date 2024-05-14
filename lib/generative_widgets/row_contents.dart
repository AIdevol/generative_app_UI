import 'package:flutter/material.dart';

class RowContent extends StatelessWidget {
  const RowContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Group Prompts',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            Spacer(),
            _buildIconButton(
              onPressed: () {
                // Add functionality for the add button
              },
              icon: Icons.add,
              color: Colors.orange,
            ),
            SizedBox(width: 5),
            _buildIconButton(
              onPressed: () {
                // Add functionality for the forward button
              },
              icon: Icons.arrow_forward_ios_outlined,
              color: Color(0xfff242728),
              iconSize: 20,
            ),
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
