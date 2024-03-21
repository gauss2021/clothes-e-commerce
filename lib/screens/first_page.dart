import 'package:chotes_e_commerce/providers/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  List<Widget> pagesList = const [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Search"),
    ),
    Center(
      child: Text("Add"),
    ),
    Center(
      child: Text("Favorite"),
    ),
    Center(
      child: Text("Profil"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int indexPage = Provider.of<BottomNavigationBarProvider>(context).index;
    return Scaffold(
      body: pagesList[indexPage],
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Provider.of<BottomNavigationBarProvider>(context,
                          listen: false)
                      .pageIndex(0);
                },
                child: Icon(
                  Icons.home,
                  color: indexPage == 0 ? Colors.amber : Colors.white,
                  size: 24,
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<BottomNavigationBarProvider>(context,
                          listen: false)
                      .pageIndex(1);
                },
                child: Icon(
                  Icons.search,
                  color: indexPage == 1 ? Colors.amber : Colors.white,
                  size: 24,
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<BottomNavigationBarProvider>(context,
                          listen: false)
                      .pageIndex(2);
                },
                child: Icon(
                  Icons.add,
                  color: indexPage == 2 ? Colors.amber : Colors.white,
                  size: 24,
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<BottomNavigationBarProvider>(context,
                          listen: false)
                      .pageIndex(3);
                },
                child: Icon(
                  Icons.favorite,
                  color: indexPage == 3 ? Colors.amber : Colors.white,
                  size: 24,
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<BottomNavigationBarProvider>(context,
                          listen: false)
                      .pageIndex(4);
                },
                child: Icon(
                  Icons.person,
                  color: indexPage == 4 ? Colors.amber : Colors.white,
                  size: 24,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
