import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:wallpapaper_list_08/pages/image_page.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
      children: [
        for(int i=1; i<6; i++)
          GestureDetector(
            onTap: (){
              context.pushTransparentRoute(ImagePage());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                child: Hero(
                  tag: "1",
                  child: Image.asset("assets/images/$i.png",fit: BoxFit.cover,)
                ),
              ),
            ),
          )
      ],),
    );
  }
}
