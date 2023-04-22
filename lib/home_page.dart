import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpg',
    price: '5',
    designer: 'Martin Andres',
    title: 'Night Heaven',
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
    price: '2',
    designer: 'Abraham Costa',
    title: 'Sun goes down with tree',

  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
    price: '5',
    designer: 'Jamie Bryan',
    title: 'Mountains',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
    price: '2',
    designer: 'Andrea Float',
    title: 'Grass',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
    price: '3',
    designer: 'Abraham Costa',
    title: 'Coast',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
    price: '2',
    designer: 'Jamie Bryan',
    title: 'See',
  ),
  ImageDetails(
    imagePath: 'images/7.jpg',
    price: '4',
    designer: 'Jamie Bryan',
    title: 'Darkness',
  ),
  ImageDetails(
    imagePath: 'images/8.jpg',
    price: '4',
    designer: 'Andrea Float',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
    price: '1',
    designer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
    price: '1',
    designer: 'Jam Trey',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
    price: '2',
    designer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
    price: '2',
    designer: 'Jam Trey',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/13.jpg',
    price: '2',
    designer: 'Jamie Bryan',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'images/14.jpg',
    price: '3',
    designer: 'Matthew',
    title: 'Cone Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/15.jpg',
    price: '3',
    designer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/16.jpg',
    price: '5.00',
    designer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/17.jpg',
    price: '5.00',
    designer: 'Jam Trey',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/18.jpg',
    price: '5.00',
    designer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/19.jpg',
    price: '5.00',
    designer: 'John Doe',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/20.jpg',
    price: '5.00',
    designer: 'Martin Sawyer',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/21.jpg',
    price: '5.00',
    designer: 'Martin Sawyer',
    title: 'Strawberry Ice Cream',
  ),
  ImageDetails(
    imagePath: 'images/22.jpg',
    price: '5.00',
    designer: 'Smith Han',
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
                fontSize: 35,
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
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
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
                              designer: _images[index].designer,
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
  final String designer;
  final String title;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.designer,
    required this.title,
  });
}