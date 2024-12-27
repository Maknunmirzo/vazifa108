import 'package:flutter/material.dart';
import 'package:thing/presentation/widgets/RecentlyAddedItem.dart';

class Categoriesdetailsitem extends StatelessWidget {
  const Categoriesdetailsitem({super.key, required this.item1, required this.item2});

  final RecentlyAddedItem item1,item2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 37,right: 37,bottom: 60,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: item1),
          SizedBox(width: 20,),
          Expanded(child: item2),
        ],
      ),
    );
  }
}