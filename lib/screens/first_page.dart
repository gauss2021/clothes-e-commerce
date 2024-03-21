import 'package:chotes_e_commerce/providers/bottom_navigation_provider.dart';
import 'package:chotes_e_commerce/screens/add_page.dart';
import 'package:chotes_e_commerce/screens/cart_page.dart';
import 'package:chotes_e_commerce/screens/home_screen.dart';
import 'package:chotes_e_commerce/screens/profil_page.dart';
import 'package:chotes_e_commerce/screens/search_page.dart';
import 'package:chotes_e_commerce/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  List<Widget> pagesList = const [
    Home(),
    SearchPage(),
    AddPage(),
    CartPage(),
   ProfilPage()
  ];

  

  @override
  Widget build(BuildContext context) {
    int indexPage = Provider.of<BottomNavigationBarProvider>(context).index;
    return Scaffold(
      backgroundColor: Colors.white,
      body: pagesList[indexPage],
      bottomNavigationBar:BottomNavigationBarWidget(indexPage: indexPage,)
    );
  }
}
