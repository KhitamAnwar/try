import 'package:flutter/material.dart';

import 'constant_app.dart';

class OneProject extends StatefulWidget {
  const OneProject({super.key});

  @override
  State<OneProject> createState() => _OneProjectState();
}

class _OneProjectState extends State<OneProject> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Find Your', style: TextStyle(color: Colors.black87, fontSize: 25)),
                  const SizedBox(height: 5),
                  const Text('Inspiration', style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(color: Color.fromARGB(244, 231, 231, 230), borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search you\'r looking for',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Promo Today', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: images.length,
                       scrollDirection: Axis.horizontal,
          
                      itemBuilder: (context, index) {
                        return promoCard(images[index]);
                      },
                      
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(fit: BoxFit.cover, image: AssetImage('images/i4.jpg')),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [0.1, 0.9], colors: [Colors.black.withOpacity(0.8), Colors.black.withOpacity(0.1)])),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('Best design', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
                  ],
                ),
          )),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [0.1, 0.9], colors: [Colors.black.withOpacity(0.8), Colors.black.withOpacity(0.1)])),
      ),
    ),
  );
}