import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "First page",
          style: TextStyle(fontSize: 34),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 32,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
