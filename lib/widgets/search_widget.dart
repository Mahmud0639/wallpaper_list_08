import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget{
  const SearchWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0,3)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 250,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search here...",
                hintStyle: TextStyle(fontSize: 20)
              ),
            ),
          ),
          const Icon(Icons.search,size: 24,color: Color(0xFF475269),)
        ],
      ),
    );
  }
}