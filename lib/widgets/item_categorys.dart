import 'package:demo_shop_app/models/category.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  final List<Category> category;
  final List<int> colorCodes;

  const ListCategory({Key? key, required this.category, required this.colorCodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    color: Colors.amber[colorCodes[index]],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Image.asset(
                            category[index].img,
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              category[index].name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'MyFont'),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
