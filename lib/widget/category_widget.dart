import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemBuilder: (ctx, index) {
          return Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: Colors.black38,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.fossil.com/on/demandware.static/-/Library-Sites-FossilSharedLibrary/default/dwe6cff0ba/2021/HO21/set_1228_dgp_bags/XXX_Bags_Satchels.jpg"))),
          );
        },
        separatorBuilder: (c, i) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
