import 'package:flutter/material.dart';

import '../widgets/image_widget.dart';
import '../widgets/search_widget.dart';


class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Favourites",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 24,
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  child: Text("Your Favorites",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
                ),

                Flexible(flex: 1,child: ImageWidgets())
              ],
            ),
          ),
        ));
  }
}
