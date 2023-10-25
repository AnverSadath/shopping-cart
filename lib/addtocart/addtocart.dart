import 'package:flutter/material.dart';
import 'package:flutter_application_3/database/image_data.dart';

class addtocart extends StatefulWidget {
  const addtocart({super.key});

  @override
  State<addtocart> createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "CART",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 784,
            width: double.infinity,
            child: ListView.builder(
              itemCount: imagedata().imagelist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                          height: 200,
                          width: 130,
                          child: imagedata().imagelist[index]),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, top: 10),
                        child: Column(
                          children: [
                            Text("Price"),
                            SizedBox(height: 30),
                            Text("Quantity"),
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove),
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  height: 50,
                                  width: 150),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
