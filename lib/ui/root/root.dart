import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:rnd_product/ui/listPage/list_page_view.dart';
import 'package:rnd_product/ui/onePage/one_page_view.dart';
import 'package:rnd_product/ui/preferencePage/preference_view.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = const [
      OnePageView(),
      ListPageView(),
      PreferencePage(),
    ];

    return DefaultTabController(
        length: pageList.length,
        child: Scaffold(
          appBar: AppBar(
            leading: const FlutterLogo(size: 30),
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.tune_rounded, size: 30))],
          ),
          body: Stack(
            children: [
              TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: pageList,
              ),
              const BottomTabBar()
            ],
          ),
        ));
  }
}

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        bottom: 10,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    border: Border.all(color: CupertinoColors.systemGrey4),
                    borderRadius: BorderRadius.circular(30)),
                child: const TabBar(
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(icon: Icon(Icons.explore_rounded)),
                    Tab(icon: Icon(Icons.dashboard_rounded)),
                    Tab(icon: Icon(Icons.settings)),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}


/*
Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: ,
                            )
TabBar(tabs: [
              Tab(icon: Icon(Icons.abc)),
              Tab(icon: Icon(Icons.abc)),
            ])
*/