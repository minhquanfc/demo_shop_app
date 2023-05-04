import 'package:demo_shop_app/models/category.dart';
import 'package:demo_shop_app/widgets/item_categorys.dart';
import 'package:demo_shop_app/widgets/item_my_order.dart';
import 'package:flutter/material.dart';

import '../models/orders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> images = [
    Category('Rau củ', 'assets/images/basket.png'),
    Category('Hoa quả', 'assets/images/avocado.png'),
    Category('Thịt', 'assets/images/bbq.png'),
    Category('Rau củ', 'assets/images/basket.png'),
    Category('Hoa quả', 'assets/images/avocado.png'),
    Category('Thịt', 'assets/images/bbq.png')
  ];
  final List<int> colorCodes = <int>[600, 500, 100,600, 500, 100];

  final List<MyOrders> myOrder = [
    MyOrders("Rau củ", "Rau củ", "04/05/2023", 50, 5,'assets/images/basket.png'),
    MyOrders("Hoa quả", "Rau củ", "04/05/2023", 10, 2,'assets/images/avocado.png'),
    MyOrders("Thịt", "Thịt", "04/05/2023", 20, 3,'assets/images/bbq.png'),
    MyOrders("Hoa quả", "Rau củ", "04/05/2023", 10, 2,'assets/images/avocado.png'),
    MyOrders("Thịt", "Thịt", "04/05/2023", 20, 3,'assets/images/bbq.png'),
    MyOrders("Rau củ", "Rau củ", "04/05/2023", 50, 5,'assets/images/basket.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // address and avt
            const WidgetToolbar(),

            ///text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Good morning,Quan",
                style: TextStyle(
                    color: Colors.grey, fontSize: 14, fontFamily: 'MyFont'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Let's order fresh items for you",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontFamily: 'MyFont',
                    fontWeight: FontWeight.bold),
              ),
            ),

            //category
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Categorys",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'MyFont',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // horizontal listview
            SizedBox(
              height: 5,
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListCategory(category: images, colorCodes: colorCodes,),
              ),
            // my order
             const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "My order",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'MyFont',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListMyOrders(items: myOrder)
          ],
        ),
      ),
    );
  }
}

class WidgetToolbar extends StatelessWidget {
  const WidgetToolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.add_location_outlined,
                color: Colors.black,
              ),
              Text(
                "Sơn Bằng, Hà Tĩnh",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'MyFont',
                    fontSize: 14),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset('assets/images/bunny.png'),
          )
        ],
      ),
    );
  }
}
