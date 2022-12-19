import 'package:flutter/material.dart';

class TabBarSliverAppBar extends StatelessWidget {
  const TabBarSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (context , value) =>[
              const SliverAppBar(
                floating: true ,
                pinned: true ,
                elevation: 0 ,
                title: Text("Sliver AppBar"),
                bottom: TabBar(tabs: [
                  Tab(icon: Icon(Icons.map),text: "TAB 1",),
                  Tab(icon: Icon(Icons.portrait),text: "TAB 2",),
                ]),
              )
            ],
            body: const TabBarView(children: [
              ListViewBuilderScreen(),
              ListViewBuilderScreen(),
            ]),
        ),
      ),
    );
  }
}

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 40,
        itemBuilder: (context,i) => ListTile(
          title: Text("Title Index$i"),
          subtitle: Text("SubTitle Index$i"),
        )
    );
  }
}

