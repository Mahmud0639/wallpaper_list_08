import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget{
  const ImagePage({super.key});


  @override
  Widget build(BuildContext context){

    return Scaffold(
      extendBody: true,
      body: DismissiblePage(
          direction: DismissiblePageDismissDirection.multi,
          child: Hero(
            //this tag should match with the tag of the image in grid view but I am using here it static
            tag: "1",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/1.png")
                )
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                 alignment: Alignment.bottomCenter,
                color: Colors.black.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(10),
                    child: Icon(Icons.share,color: Colors.white,size: 30,),),
                    Padding(padding: EdgeInsets.all(10),
                    child: Icon(Icons.download,color: Colors.white,size: 30,),),
                    Padding(padding: EdgeInsets.all(10),
                    child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "favPage");
                        },
                        child: Icon(Icons.favorite_outline,color: Colors.white,size: 30,)),)
                  ],
                ),
              ),
            ),
          ), onDismissed: (){
            Navigator.of(context).pop();
      }),
    );
  }
}