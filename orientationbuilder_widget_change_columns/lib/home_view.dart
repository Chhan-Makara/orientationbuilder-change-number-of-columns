import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<String> lstImg = [
    "https://listsbylukiih.com/wp-content/uploads/2025/01/sieam-reap-cambodia-angkor-wat-sunrise.webp",
    "https://cambodianess.com/uploads/images/1680513144qxbu7-img-2367.JPEG",
    "https://b2b-cambodia.com/wp-content/uploads/2024/01/Angkor-Wat-Cambodia-Tourism.jpg",
    "https://listsbylukiih.com/wp-content/uploads/2025/01/sieam-reap-cambodia-angkor-wat-sunrise.webp",
    "https://cambodianess.com/uploads/images/1680513144qxbu7-img-2367.JPEG",
    "https://b2b-cambodia.com/wp-content/uploads/2024/01/Angkor-Wat-Cambodia-Tourism.jpg",
    "https://listsbylukiih.com/wp-content/uploads/2025/01/sieam-reap-cambodia-angkor-wat-sunrise.webp",
    "https://cambodianess.com/uploads/images/1680513144qxbu7-img-2367.JPEG",
    "https://b2b-cambodia.com/wp-content/uploads/2024/01/Angkor-Wat-Cambodia-Tourism.jpg",
    "https://listsbylukiih.com/wp-content/uploads/2025/01/sieam-reap-cambodia-angkor-wat-sunrise.webp",
    "https://cambodianess.com/uploads/images/1680513144qxbu7-img-2367.JPEG",
    "https://b2b-cambodia.com/wp-content/uploads/2024/01/Angkor-Wat-Cambodia-Tourism.jpg",
    "https://listsbylukiih.com/wp-content/uploads/2025/01/sieam-reap-cambodia-angkor-wat-sunrise.webp",
    "https://cambodianess.com/uploads/images/1680513144qxbu7-img-2367.JPEG",
    "https://b2b-cambodia.com/wp-content/uploads/2024/01/Angkor-Wat-Cambodia-Tourism.jpg",
    "https://listsbylukiih.com/wp-content/uploads/2025/01/sieam-reap-cambodia-angkor-wat-sunrise.webp",
    "https://cambodianess.com/uploads/images/1680513144qxbu7-img-2367.JPEG",
    "https://b2b-cambodia.com/wp-content/uploads/2024/01/Angkor-Wat-Cambodia-Tourism.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "Orientationbuilder widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.landscape ? 6 : 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 1,
              childAspectRatio: 0.9,
            ),
            itemCount: lstImg.length,
            itemBuilder: (context, index) {
              final img = lstImg[index];
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(img, fit: BoxFit.cover),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
