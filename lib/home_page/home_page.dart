import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final gridItems = [HomeGridData(title: "Chat",icon: Icons.chat),
    HomeGridData(title: "Home",icon: Icons.home),
    HomeGridData(title: "Camera",icon: Icons.camera),
    HomeGridData(title: "File",icon: Icons.file_copy)];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Image.asset(
              "assets/logo.png",
              width: 59,
              height: 34,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.drag_handle,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  "Angelina",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 20,
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: GridView.builder(
                    padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16),
                    itemBuilder: (context, index) {
                      return _gridWidget(gridItems[index]);
                    },
                    itemCount: gridItems.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _gridWidget(HomeGridData homeGridData) {
  return Card(
    elevation: 5,
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(homeGridData.icon),
          SizedBox(
            height: 8,
          ),
          Text(homeGridData.title)
        ],
      ),
    ),
  );
}

class HomeGridData {
  String title;
  IconData icon;
  HomeGridData({required this.title, required this.icon});
}
