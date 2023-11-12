import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/shppings.jpeg"),
                  fit: BoxFit.fill),
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 8, top: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Athletic Shoes",
                      style: appStyleWithHeight(
                          42, Colors.white, FontWeight.bold, 1.5),
                    ),
                    Text("Collection",
                        style: appStyleWithHeight(
                            42, Colors.white, FontWeight.bold, 1.3)),
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        isScrollable: true,
                        labelColor: Colors.white,
                        labelStyle: appStyle(24, Colors.white, FontWeight.bold),
                        unselectedLabelColor: Colors.grey.withOpacity(0.7),
                        controller: _tabController,
                        tabs: const [
                          Tab(text: "Men Shoes"),
                          Tab(text: "Women Shoes"),
                          Tab(text: "Kids Shoes"),
                        ])
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
            child: Container(
              padding: const EdgeInsets.only(left: 8),
              child: TabBarView(controller: _tabController, children: [
                Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.34,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                            itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width*0.6,
                              color: Colors.grey,
                            ),
                          );
                        }),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Latest Shoes",
                              style: appStyle(14, Colors.black, FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Show All",
                                  style:
                                      appStyle(14, Colors.black, FontWeight.w500),
                                ),
                                const Icon(Icons.arrow_right, size: 30)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width*0.3,
                            color: Colors.yellow,
                          ),
                        );
                      }),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.34,
                      color: Colors.green,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.34,
                      color: Colors.amberAccent,
                    )
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    ));
  }
}
