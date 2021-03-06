import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardMainGridView extends StatelessWidget {
  final String title;
  final String imagePath;
  final int initialIndex;

  CardMainGridView({
    @required this.imagePath,
    @required this.title,
    @required this.initialIndex,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        elevation: 5,
        child: InkWell(
          onTap: () {
            Get.toNamed(
              '/tabviewpages',
              arguments: this.initialIndex,
            );
          },
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  height: constraints.maxHeight * 0.2,
                  alignment: Alignment.center,
                  child: Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 0.65,
                  child: Image.asset(
                    this.imagePath,
                    width: 70,
                    height: 70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
