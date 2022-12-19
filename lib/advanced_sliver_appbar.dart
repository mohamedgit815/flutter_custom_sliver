import 'package:flutter/material.dart';

class AdvancedSliverAppBar extends StatelessWidget {
  const AdvancedSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverPersistentHeader(
              pinned: true ,
              delegate: CustomSliverAppBarDelegate(expandedHeight: 300),),

            buildImages()
          ],
        ),
      ),
    );
  }

  Widget buildImages() => SliverList(
    delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(
            title: Text("Title Index$index"),
            subtitle: Text("SubTitle Index$index"),
          ) ,
      childCount: 20,
    ),
  );
}


class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const int size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      //overflow: Overflow.visible,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top ,
          left: 20 ,
          right: 20 ,
          child: buildFloating(shrinkOffset)
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
    //duration: const Duration(milliseconds: 500),
    opacity: appear(shrinkOffset),
    child: AppBar(
      title: const Text("MyApp.title"),
      centerTitle: true,
    ),
  );

  Widget buildBackground(double shrinkOffset) => Opacity(
    opacity: disappear(shrinkOffset),
    child: Image.network(
      'https://source.unsplash.com/random?mono+dark',
      fit: BoxFit.cover,
    ),
  );

  Widget buildFloating(double shrinkOffset) => Opacity(
    opacity: disappear(shrinkOffset),
    child: Card(
      child: Row(
        children: [
          Expanded(child: buildButton(text: 'Share', icon: Icons.share)),
          Expanded(child: buildButton(text: 'Like', icon: Icons.thumb_up)),
        ],
      ),
    ),
  );

  Widget buildButton({
    required String text,
    required IconData icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: const TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}