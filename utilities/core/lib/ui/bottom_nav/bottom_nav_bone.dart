import 'package:core/core.dart';
import 'package:core/ui/bottom_nav/bottom_nav_item.dart';
import 'package:core/ui/bottom_nav/nav_cubit.dart';
import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  final List<Widget> pages;
  final List<BottomNavItem> items;
  final Function(int value)? onTap;
  final int currentIndex;
  final bool? therapist;
  final Color? bgColor;
  const MyBottomNav(
      {Key? key,
      required this.pages,
      required this.items,
      this.onTap,
      this.currentIndex = 0,
      this.therapist,
      this.bgColor})
      : assert(items.length == pages.length),
        super(key: key);

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<NavCubit>().state;
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              widget.onTap?.call(value);

              context.read<NavCubit>().changeState(value);
            },
            currentIndex: state,
            backgroundColor:
                widget.bgColor ?? Theme.of(context).scaffoldBackgroundColor,
            selectedItemColor: Colors.amberAccent,
            enableFeedback: true,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xffA3A3A3),
            elevation: 0,
            items: List.generate(
              widget.items.length,
              (index) {
                final item = widget.items[index];
                return BottomNavigationBarItem(
                  icon: item.notActiveIcon,
                  label: item.title,
                  activeIcon: item.activeIcon,
                );
              },
            )),
        body: IndexedStack(
          index: state,
          children: widget.pages,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<NavCubit>().changeState(widget.currentIndex);
    });
  }
}
