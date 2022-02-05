import 'package:amjad_project_demo/widget/category_widget.dart';
import 'package:amjad_project_demo/widget/product_widget.dart';
import 'package:amjad_project_demo/widget/user_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      child: Text("UDriveUp"),
                    ),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5.0),
                          ),
                          hintText: "Search",
                          hintStyle: const TextStyle(color: Colors.black),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.headset_mic)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.ac_unit)),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.bar_chart_outlined),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "U POST UP",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "U SHOP UP",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "U BOOK UP",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "U CALL UP",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Image.network(
                        "https://media.cntraveler.com/photos/53da776c6dec627b149ec377/master/w_320%2Cc_limit/gucci-carry-on-bag-men.jpg",
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          height: 30,
                          color: Colors.black26,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('AED 300/_'),
                              Container(
                                alignment: Alignment.center,
                                color: Colors.orange,
                                height: 30,
                                width: 60,
                                child: const Text(
                                  '50% off',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Banner Title',
                    ),
                    ElevatedButton(
                      child: const Text('Shop up'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              const CategoryWidget(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#TOP STORES',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('View All')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: UserWidget(),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#SHOP BY CATEGORY',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('View All')
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.category,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('Sub Category')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.category,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('Sub Category')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ProductWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
