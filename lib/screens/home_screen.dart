import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                    tabAlignment:TabAlignment.start ,
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
        children:[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height:MediaQuery.of(context).size.height*0.36 , 
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:4 ,itemBuilder:(context,index){
                        int numero= index;
                      return Container(
                        margin:const EdgeInsets.only(right: 16),
                        height: 100,
                        color: Colors.green,
                        width: MediaQuery.of(context).size.width*0.56,
                        child: Text(" test $numero"),
                      );
                    } ),
                  ),
                ),
               const SizedBox(
                  height: 10,
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Arrivages", style: TextStyle(color: Colors.black),),
                    SizedBox(
                      child: Row(
                        children: [
                         const Text("Arrivages", style: TextStyle(color: Colors.black),),
                          IconButton(onPressed: (){}, icon:const Icon(Icons.navigate_next,color: Colors.black,size: 18,))
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.1,
                        color: Colors.amber,
                      )
              ],
            ),

             Column(
              children: [
                Container(
                  height:MediaQuery.of(context).size.height*0.36 ,
                  width: double.infinity,
                  color: Colors.amber,
                ),
               const SizedBox(
                  height: 16,
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Arrivages", style: TextStyle(color: Colors.black),),
                      SizedBox(
                        child: Row(
                          children: [
                           const Text("Arrivages", style: TextStyle(color: Colors.black),),
                            IconButton(onPressed: (){}, icon:const Icon(Icons.navigate_next,color: Colors.black,size: 18,))
                          ],
                        ),
                      ),
                      
                    ],
                  ),
               )
              ],
            ),

             Column(
              children: [
                Container(
                  height:MediaQuery.of(context).size.height*0.36 ,
                  width: double.infinity,
                  color: Colors.red,
                ),
               const SizedBox(
                  height: 16,
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Arrivages", style: TextStyle(color: Colors.black),),
                    SizedBox(
                      child: Row(
                        children: [
                         const Text("Arrivages", style: TextStyle(color: Colors.black),),
                          IconButton(onPressed: (){}, icon:const Icon(Icons.navigate_next,color: Colors.black,size: 18,))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
        ]
         
        )
      ),
            


          ],
        ),
      )),
    );
  }
}
