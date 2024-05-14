import 'package:flutter/material.dart';

class RowIcon extends StatelessWidget {
  const RowIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 20),
      child: Column(
        children: [
          _buildRow([
            _buildIcon(Icons.qr_code_scanner_sharp, Colors.amberAccent),
            _buildIcon(Icons.data_exploration, Color(0xFFE496F1)),
            _buildIcon(Icons.rule_folder_rounded, Color(0xFFE496F1)),
            _buildIcon(Icons.analytics_sharp, Color(0xFFD6834B)),
          ]),
          SizedBox(height: 20),
          _buildRow([
            _buildIcon(Icons.repartition_rounded, Color(0xFFE496F1)),
            _buildIcon(
                Icons.swap_horizontal_circle_outlined, Color(0xFF99E6E6)),
            _buildIcon(Icons.system_update_alt_rounded, Color(0xFF96C5F1)),
            _buildIcon(Icons.calculate_sharp, Color(0xFFECA6BB)),
          ]),
        ],
      ),
    );
  }

  Widget _buildRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children.map((widget) {
        return Container(
          child: widget,
        );
      }).toList(),
    );
  }

  Widget _buildIcon(IconData icon, Color color) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: GestureDetector(
        onTap: () {
          // Add your onTap logic here
        },
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
