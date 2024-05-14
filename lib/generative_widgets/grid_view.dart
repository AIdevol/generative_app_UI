import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:generate_response/constants/svg_image.dart';

class MainBox extends StatelessWidget {
  const MainBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildContainer(
            svgImagePath: coding,
            backgroundColor: Color.fromARGB(255, 118, 163, 242),
            title: 'Program',
            subtitle: 'Coding',
          ),
          _buildContainer(
            svgImagePath: note,
            backgroundColor: Color.fromARGB(255, 255, 224, 140),
            title: 'Content',
            subtitle: 'Writing',
          ),
          _buildContainer(
            svgImagePath: note,
            backgroundColor: const Color.fromARGB(255, 239, 146, 177),
            title: 'Assistant',
            subtitle: 'Planning',
          ),
        ],
      ),
    );
  }

  Widget _buildContainer({
    required String svgImagePath,
    required Color backgroundColor,
    required String title,
    required String subtitle,
  }) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        color: Color(0xfff242728),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SvgPicture.asset(
                    svgImagePath,
                    height: 25,
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
