import 'package:flutter/material.dart';
import 'package:flutter_application_3/cart_page/cart_page.dart';
import 'package:flutter_application_3/database/image_data.dart';
import 'package:flutter_application_3/provider/provider.dart';
import 'package:provider/provider.dart';

class front_page extends StatefulWidget {
  const front_page({super.key});

  @override
  State<front_page> createState() => _front_pageState();
}

class _front_pageState extends State<front_page> {
  List boxlist = [
    Center(child: Text("ALL")),
    Center(child: Text("Men")),
    Center(child: Text("Women")),
    Center(child: Text("Kids")),
    Center(child: Text("baby"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Discover",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.shopping_cart),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 310,
                  height: 55,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Color.fromARGB(255, 220, 215, 215),
                        hintText: "Search Anything",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                itemCount: boxlist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: boxlist[index],
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 233, 229, 229)),
                    width: 65,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: imagedata().imagelist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisExtent: 250),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ChangeNotifierProvider(
                          create: (context) => addandsub(),
                          child: CartPage(
                            imageindex: index,
                          ),
                        );
                      },
                    )),
                    child: Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: imagedata().imagelist[index],
                                height: 180,
                                width: 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                      ),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              255, 234, 232, 232)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "RGULAR FIT SLOGAN",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "PKR,1190",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 70,
                      width: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
