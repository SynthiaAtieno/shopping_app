import 'package:flutter/material.dart';
import 'package:online_shopping_app/shared/appstyle.dart';

class ProductCard extends StatefulWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.name,
      required this.category,
      required this.price,
      required this.id});

  final String image;
  final String name;
  final String category;
  final String price;
  final String id;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 0.6,
                spreadRadius: 1,
                offset: Offset(1, 1),
                color: Colors.white)
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.20,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(widget.image))),
                  ),
                  Positioned(
                    right: 10,
                    child: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.favorite_outline)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: appStyleWithHeight(
                          16, Colors.black, FontWeight.bold, 0.8),
                    ),
                    Text(
                      widget.category,
                      style: appStyle(12, Colors.grey, FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.price,
                            style: appStyle(18, Colors.black, FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                "Colors",
                                style:
                                    appStyle(12, Colors.grey, FontWeight.w500),
                              ),
                              const SizedBox(width: 5),
                              ChoiceChip(
                                label: const Text(" "),
                                selected: selected,
                                visualDensity: VisualDensity.compact,
                                selectedColor: Colors.black,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
