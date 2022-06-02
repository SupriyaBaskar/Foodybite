import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int seletedIndex=0;
  final List<String>categories=[];
  @override
  Widget build(BuildContext context) {
    return Container(
             height: 90.0,
             color: Colors.white,
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context,int index){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0,),
              child: Text(categories[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            );

          }
      ),

    );

  }
}


