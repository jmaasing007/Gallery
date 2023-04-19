import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpg',
    price: '5',
    photographer: 'Martin Andres',
    title: 'Night Heaven',
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
    price: '2',
    photographer: 'Abraham Costa',
    title: 'Spring',

  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
    price: '30.00',
    photographer: 'Jamie Bryan',
    title: 'Casual Look',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/7.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/8.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/13.jpg',
    price: '20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/14.jpg',
    price: '20.00',
    photographer: 'Matthew',
    title: 'Cone Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/15.jpg',
    price: '25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/16.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/17.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/18.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/19.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/20.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/21.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/22.jpg',
    price: '5.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photographer: _images[index].photographer,
                              price: _images[index].price,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.photographer,
    required this.title,
  });
}