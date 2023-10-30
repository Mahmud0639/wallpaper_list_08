import 'package:flutter/material.dart';
import 'package:wallpapaper_list_08/widgets/image_widget.dart';

import '../widgets/search_widget.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 6, child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,size: 24,color: Colors.black,),
                  Text("DP Wallpapers",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, "favImage");
                  },child: Icon(Icons.favorite,color: Colors.red,size: 24,))
                  
                ],
              ),
            ),
            SearchWidget(),
            const TabBar(
                isScrollable:true,
                labelColor: Colors.black54,
                labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                padding: EdgeInsets.symmetric(horizontal: 5),
                indicator: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2))
                ),
                tabs: [
              Tab(text: "All",),
              Tab(text: "Trending",),
              Tab(text: "Featured",),
              Tab(text: "Nature",),
              Tab(text: "Sky",),
              Tab(text: "See",)
            ]),
            Flexible(
              flex: 1,
              child: TabBarView(children: [
               ImageWidgets(),
               ImageWidgets(),
               ImageWidgets(),
               ImageWidgets(),
               ImageWidgets(),
               ImageWidgets(),


              ]
              ),
            )
          ],
        ),
      ),
    ));
  }
}