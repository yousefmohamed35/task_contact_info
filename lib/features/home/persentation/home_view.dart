import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Contact',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: 10, // Replace with actual data count
              itemBuilder: (context, index) {
                return CustomCart();
              }),
        ));
  }
}

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.grey[300],
      elevation: 7,
      // shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const ListTile(
        title: Text(
          'Title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            'A',
            style: TextStyle(color: Colors.white),
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            '01018008166',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
