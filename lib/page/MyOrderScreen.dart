import 'package:demo_shop_app/page/home_page.dart';
import 'package:demo_shop_app/widgets/item_my_order.dart';
import 'package:flutter/material.dart';

import '../models/orders.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  final List<MyOrders> myOrder = [
    MyOrders(
        "Rau củ", "Rau củ", "04/05/2023", 50, 5, 'assets/images/basket.png'),
    MyOrders(
        "Hoa quả", "Rau củ", "04/05/2023", 10, 2, 'assets/images/avocado.png'),
    MyOrders("Thịt", "Thịt", "04/05/2023", 20, 3, 'assets/images/bbq.png'),
  ];
  late  double prices = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalAmount();
  }

  void totalAmount(){
    double totalAmount = myOrder.fold(0, (previousValue, order) => previousValue + order.amount);
    prices = totalAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CircleAvatar(
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey,
                size: 20,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              "My Cart",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListMyOrders(items: myOrder),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total amount",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'MyFont',
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$${prices.toStringAsFixed(2)}',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'MyFont',
                              fontSize: 16),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.blueAccent),
                            elevation: MaterialStatePropertyAll(0),
                            shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    side: BorderSide(color: Colors.white)))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen();
                            },
                          ));
                        },
                        child: const Text(
                          "Pay now",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'MyFont',
                              color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
