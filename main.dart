import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'header',
                style: TextStyle(color: Colors.amber),
              ),
            ),
            ListTile(
              title: const Text('home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
            ),
            ListTile(
              title: const Text('about'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Aboutpage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                // Handle page change here
              },
              scrollDirection: Axis.horizontal,
            ),
            items: [
              'assets/images/ban.jpeg',
              'assets/images/ban1.jpeg',
              'assets/images/ban2.jpeg',
              // Add more images if needed
            ]
                .map((item) => Container(
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ),
                    ))
                .toList(),
          ),
          Expanded(
            child: ListView(
              children: const [
                ProductBox(productName: 'Product airpods'),
                ProductBox(productName: 'Product laptop'),
                ProductBox(productName: 'Product mobile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Slideshow
            GestureDetector(
              onTap: () {
                // Navigate to the next page when the slideshow image is clicked
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Container(
                height: 0,
                color: Colors.amberAccent,

                child: Placeholder(), // Placeholder for slideshow
              ),
            ),
            SizedBox(height: 20),
            // Horizontal Images
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Horizontal Images',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  // Horizontal Image List
                  SizedBox(
                    height: 150, // Adjust height according to your needs
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Replace these placeholders with your images
                        GestureDetector(
                          onTap: () {
                            // Navigate to the next page when the image is clicked
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()));
                          },
                          child: Image.asset('assets/images/p1.jpeg',
                              fit: BoxFit.cover),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to the next page when the image is clicked
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()));
                          },
                          child: Image.asset('assets/images/p2.jpeg',
                              fit: BoxFit.cover),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to the next page when the image is clicked
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()));
                          },
                          child: Image.asset('assets/images/p3.jpeg',
                              fit: BoxFit.cover),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to the next page when the image is clicked
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()));
                          },
                          child: Image.asset('assets/images/p4.jpeg',
                              fit: BoxFit.cover),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to the next page when the image is clicked
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()));
                          },
                          child: Image.asset('assets/images/p5.jpeg',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Vertical Images
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vertical Images',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  // Vertical Image List
                  Column(
                    children: [
                      // Replace these placeholders with your images
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when the image is clicked
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        },
                        child: Image.asset('assets/images/p6.jpeg',
                            fit: BoxFit.cover),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when the image is clicked
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        },
                        child: Image.asset('assets/images/p7.jpeg',
                            fit: BoxFit.cover),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when the image is clicked
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        },
                        child: Image.asset('assets/images/p8.jpeg',
                            fit: BoxFit.cover),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when the image is clicked
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        },
                        child: Image.asset('assets/images/p9.jpeg',
                            fit: BoxFit.cover),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when the image is clicked
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        },
                        child: Image.asset('assets/images/p10.jpeg',
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Text('Detail Page Content'),
      ),
    );
  }
}

class Aboutpage extends StatelessWidget {
  const Aboutpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Our E-Commerce Platform!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'At Our E-Commerce Platform, we are passionate about delivering an exceptional shopping experience to our customers. Our mission is to provide you with access to a diverse range of products, carefully curated to meet your needs and preferences.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Whether you are searching for the latest tech gadgets, trendy fashion items, or everyday essentials, we have got you covered. Our user-friendly interface, secure payment options, and reliable delivery services ensure that your shopping journey is seamless and enjoyable.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Thank you for choosing Our E-Commerce Platform as your trusted online shopping destination. We look forward to serving you and providing you with the best products and services.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hi'),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String productName;
  const ProductBox({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage1(productName: productName),
          ),
        );
      },
      child: Container(
        height: 150,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            productName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ProductDetailPage1 extends StatelessWidget {
  final String productName;

  ProductDetailPage1({super.key, required this.productName});

  final Map<String, List<Map<String, dynamic>>> productDetails = {
    'Product airpods': [
      {
        'image': 'assets/images/air.jpeg',
        'name': 'Airpods',
        'offer': 'Buy 1 Get 1 Free',
        'price': 199.99,
        'description':
            'High-quality wireless earbuds with advanced features and crystal-clear sound.',
      },
      {
        'image': 'assets/images/air1.jpeg',
        'name': 'Airpods',
        'offer': 'Buy 1 Get 1 Free',
        'price': 199.99,
        'description':
            'High-quality wireless earbuds with advanced features and crystal-clear sound.',
      },
      {
        'image': 'assets/images/air2.jpeg',
        'name': 'Airpods',
        'offer': 'Buy 1 Get 1 Free',
        'price': 199.99,
        'description':
            'High-quality wireless earbuds with advanced features and crystal-clear sound.',
      },
      {
        'image': 'assets/images/blue 1.png',
        'name': 'Airpods',
        'offer': 'Buy 1 Get 1 Free',
        'price': 199.99,
        'description':
            'High-quality wireless earbuds with advanced features and crystal-clear sound.',
      },
      {
        'image': 'assets/images/blue2.png',
        'name': 'Airpods',
        'offer': 'Buy 1 Get 1 Free',
        'price': 199.99,
        'description':
            'High-quality wireless earbuds with advanced features and crystal-clear sound.',
      },
      {
        'image': 'assets/images/blue.jpeg',
        'name': 'Airpods',
        'offer': 'Buy 1 Get 1 Free',
        'price': 199.99,
        'description':
            'High-quality wireless earbuds with advanced features and crystal-clear sound.',
      },
    ],
    'Product laptop': [
      {
        'image': 'assets/images/lap.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
      {
        'image': 'assets/images/lap1.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
      {
        'image': 'assets/images/lap2.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
      {
        'image': 'assets/images/lap3.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
      {
        'image': 'assets/images/lap4.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
      {
        'image': 'assets/images/lap6.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
      {
        'image': 'assets/images/lap7.jpeg',
        'name': 'Laptop',
        'offer': 'Special Discount',
        'price': 899.99,
        'description': 'Powerful laptop for your computing needs.',
      },
    ],
    'Product mobile': [
      {
        'image': 'assets/images/mobile.jpeg',
        'name': 'Mobile Phone',
        'offer': 'Limited Time Offer',
        'price': 499.99,
        'description': 'Sleek and feature-packed mobile phone.',
      },
      {
        'image': 'assets/images/mobile2.jpeg',
        'name': 'Mobile Phone',
        'offer': 'Limited Time Offer',
        'price': 499.99,
        'description': 'Sleek and feature-packed',
      },
      {
        'image': 'assets/images/mobile3.jpeg',
        'name': 'Mobile Phone',
        'offer': 'Limited Time Offer',
        'price': 499.99,
        'description': 'Sleek and feature-packed',
      },
      {
        'image': 'assets/images/mobile6.jpeg',
        'name': 'Mobile Phone',
        'offer': 'Limited Time Offer',
        'price': 499.99,
        'description': 'Sleek and feature-packed',
      },
      {
        'image': 'assets/images/mobile4.jpeg',
        'name': 'Mobile Phone',
        'offer': 'Limited Time Offer',
        'price': 499.99,
        'description': 'Sleek and feature-packed',
      },
      {
        'image': 'assets/images/mobile5.jpeg',
        'name': 'Mobile Phone',
        'offer': 'Limited Time Offer',
        'price': 499.99,
        'description': 'Sleek and feature-packed',
      },
    ],
    // Add details for other products
  };

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>>? details = productDetails[productName];

    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: details?.length ?? 0,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'hero-tag-$productName-$index',
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          details![index]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      details[index]['name'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Offer: ${details[index]['offer']}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Price: \$${details[index]['price'].toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        details[index]['description'],
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HeroDetailScreen extends StatelessWidget {
  final String imageTag;
  final String imageUrl;

  HeroDetailScreen({required this.imageTag, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: imageTag,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
