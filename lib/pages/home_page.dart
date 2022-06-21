import 'package:flutter/material.dart';

import '../generated/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image.asset(Assets.imagesAmazonLogo),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            // #search
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: const Color(0xff018197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What are you looking for?',
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Color(0xff018197),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.camera_alt,
                      color: Color(0xff018197),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // #location
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Deliver to Korea, Republic of',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  // #advert
                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.only(topRight: Radius.circular(90), bottomRight: Radius.circular(90)),
                                color: Colors.white,
                                image:
                                    DecorationImage(image: AssetImage('assets/images/image_1.jpeg'), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.all(20),
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'We ship 45million products',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    height: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign in for the best experience',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orange,
                          child: const Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Create an account",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Deal of the Day',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        SizedBox(height: 16),
                        Image(
                          width: double.infinity,
                          height: 240,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/item_7.jpeg'),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Up to 30% off APC UPS Battery Back \n\$10.99 - \$79.9",
                          style: TextStyle(fontSize: 17, height: 1.7),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #best
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Best sellers in Electronics',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                            ),
                            children: const [
                              Image(
                                image: AssetImage('assets/images/item_4.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: AssetImage('assets/images/item_6.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: AssetImage('assets/images/item_7.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              Image(
                                image: AssetImage('assets/images/item_5.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #top
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Top products in Camera',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage('assets/images/item_7.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage('assets/images/item_3.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage('assets/images/item_5.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
