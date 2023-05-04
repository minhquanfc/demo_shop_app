import 'package:demo_shop_app/models/orders.dart';
import 'package:demo_shop_app/page/MyOrderScreen.dart';
import 'package:flutter/material.dart';

class ListMyOrders extends StatelessWidget {
  final List<MyOrders> items;

  const ListMyOrders({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange[100],
                child: Image.asset(items[index].img),
              ),
              title: Text(items[index].name,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MyFont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              subtitle: Text(items[index].date,
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'MyFont', fontSize: 14)),
              trailing: Column(
                children: [
                  Text(
                    '\$${items[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'MyFont',
                        fontSize: 15),
                  ),
                  Text('${items[index].quality.toString()} items',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'MyFont',
                          fontSize: 14)),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyOrderScreen();
                  },
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
