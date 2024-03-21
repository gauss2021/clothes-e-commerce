import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Home'),
    Tab(text: 'Femme'),
    Tab(text: 'Enfants'),
    Tab(text: 'Ete'),
    Tab(text: 'Chaussures'),
    Tab(text: 'Jeans'),
    Tab(text: 'Robes'),

  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child:Stack(
          children: [
            Container(
              padding:const EdgeInsets.all(10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.35,
              decoration:const BoxDecoration(
                color: Colors.black,
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text("Kiabi",style: TextStyle(color: Colors.white,fontSize: 42),),
                 const SizedBox(height: 5,),
                  const Text("Venez comme vous etes",style: TextStyle(color: Colors.white,fontSize: 24),),
                  const SizedBox(height: 16,),
                  TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  tabs: myTabs,
                  labelColor: Colors.amber,
                  unselectedLabelColor: Colors.white,
                  indicator: const BoxDecoration(
                    color: Colors.transparent
                  ) ,
                  // dividerColor: Colors.transparent,
                  dividerHeight: 0,
                ),
                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.30),
              width: double.infinity,
              height:MediaQuery.of(context).size.height*0.65 ,
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              ),

              child:  TabBarView(
        controller:tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();
          return Center(
            child: Text(
              'This is the $label tab',
              style: const TextStyle(fontSize: 24),
            ),
          );
        }).toList(),
      ),
            )


          ],
        ),
      )),
    );
  }
}
