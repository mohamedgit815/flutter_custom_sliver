import 'package:flutter/material.dart';

class CustomScrollViewWidgets extends StatelessWidget {
  const CustomScrollViewWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context , BoxConstraints constraints) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200.0,
                  pinned: true ,
                  backgroundColor: Colors.blueGrey ,
                  elevation: 0 ,
                  floating: true ,
                  flexibleSpace: FlexibleSpaceBar(
                    expandedTitleScale: 2.0,
                    // background: Image.asset("assets/images/test.jpg", fit: BoxFit.cover,),
                    background: Container(color: Colors.red,),
                    //collapseMode: CollapseMode.pin,
                  ),
                  leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
                ) ,

                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: 20 , (context, index) {
                    return Card(
                      color: Colors.grey.shade800,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Card: $index",
                          style: TextStyle(
                              fontSize: 30.0,color: Colors.blue.shade200
                          ),
                        ),
                      ),
                    );
                  }),) ,

                SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        height: 100.0,width: double.infinity,color: Colors.teal,
                      ) ,
                      Container(
                        height: 100.0,width: double.infinity,color: Colors.deepOrange,
                      )
                    ])
                ) ,

                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(height: constraints.maxHeight * 0.5,width: double.infinity,color: Colors.amber,),
                      Container(height: 100.0,width: double.infinity,color: Colors.cyan,),
                    ],
                  ) ,) ,

                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0 ,
                      childAspectRatio: 1.0 ,
                      mainAxisSpacing: 10.0
                  ),
                  delegate: SliverChildBuilderDelegate(
                      childCount: 12 ,
                          (context, index) {
                        return Container(
                          color: Colors.indigo,
                        );
                      }),
                )
              ],
            );
          }
      ),
    );
  }
}
