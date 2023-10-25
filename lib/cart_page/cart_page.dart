import 'package:flutter/material.dart';
import 'package:flutter_application_3/addtocart/addtocart.dart';
import 'package:flutter_application_3/database/image_data.dart';
import 'package:flutter_application_3/front_page/front_page.dart';
import 'package:flutter_application_3/provider/provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.imageindex});
  final int imageindex;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => front_page(),
                  ));
            },
          ),
          centerTitle: true,
          title: Text(
            "DETAILS",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.notification_add_outlined, color: Colors.black),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 680,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(children: [
                          Container(
                            height: 500,
                            width: double.infinity,
                            child: imagedata().imagelist[widget.imageindex],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 40,
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 234, 232, 232)),
                              ),
                            ],
                          ),
                        ]),
                        SizedBox(height: 10),
                        Text(
                          "Regular Fit Slogan",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text("⭐4.5/5",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("(45 reviews)")
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                            "The name says it all,the right size slightly srugs the\nbody leaving enough room for comfort in the sleeves\nand waist"),
                        SizedBox(height: 25),
                        Text("Choose size",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Center(
                                child: Text(
                                  "L",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Consumer<addandsub>(
                          builder: (context, value, child) => Text(
                                Provider.of<addandsub>(context)
                                    .price
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () =>
                            Provider.of<addandsub>(context, listen: false)
                                .subnew(),
                        icon: Icon(Icons.remove),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () =>
                            Provider.of<addandsub>(context, listen: false)
                                .addnew(),
                        icon: Icon(Icons.add),
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => addtocart(),
                            )),
                        child: Text("Add to cart",
                            style: TextStyle(color: Colors.white)),
                      ),
                      Consumer<addandsub>(
                          builder: (context, value, child) => Text(
                              Provider.of<addandsub>(context)
                                  .Quantity
                                  .toString(),
                              style: TextStyle(color: Colors.white)))
                    ],
                  ),
                  height: 50,
                  width: 280,
                )
              ],
            )
          ],
        ));
  }
}
