import 'package:flutter/material.dart';
import 'package:generate_response/constants/images.dart';
import 'package:generate_response/core/drawer/contents/Icon_data.dart';
import 'package:generate_response/core/drawer/drawer_window.dart';
import 'package:generate_response/generative_widgets/bottom_navigatiion.dart';
import 'package:generate_response/generative_widgets/column_widgets.dart';
import 'package:generate_response/generative_widgets/grid_view.dart';
import 'package:generate_response/generative_widgets/new_contents.dart';
import 'package:generate_response/generative_widgets/row_contents.dart';
import 'package:generate_response/generative_widgets/stored_contents.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double avatarSpacing = 10.0;
    const double fontSize = 23.0;

    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigation(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profile),
                  radius: 30,
                ),
                SizedBox(width: avatarSpacing),
                Text(
                  'Hello,',
                  style: TextStyle(color: Colors.white60, fontSize: fontSize),
                ),
                SizedBox(width: avatarSpacing),
                const Text(
                  'Devesh!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: fontSize,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => _buildContainer(context),
                    ));
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 33,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 200,
            height: 200,
            child: MainBox(),
          ),
          const SizedBox(
            width: 50,
            height: 50,
            child: RowContent(),
          ),
          const SizedBox(
            height: 200,
            width: 200,
            child: ContentView(),
          ),
          const SizedBox(
            height: 50,
            width: 50,
            child: NewColumn(),
          ),
          const SizedBox(
            height: 200,
            width: 200,
            child: StoredContents(),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 20),
          child: Column(
            children: [
              Container(
                height: 180,
                width: 250,
                decoration: BoxDecoration(
                  color: const Color(0xfff242728),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(profile),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 25),
                            child: _buildIcon(
                                Icons.arrow_drop_down_circle_outlined),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildIcon(Icons.question_answer),
                          _buildIcon(Icons.question_mark_sharp),
                          _buildIcon(Icons.leaderboard),
                          _buildIcon(Icons.local_grocery_store),
                          _buildIcon(Icons.face),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 180,
                width: 280,
                child: const RowIcon(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 280,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xfff242728),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 280,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xfff242728),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        DrawerWidget(),
      ],
    );
  }

  Widget _buildIcon(IconData icon) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffE496F1),
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
