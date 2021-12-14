import 'package:flutter/material.dart';

class BelajarSliverAppbar extends StatelessWidget {
  const BelajarSliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ContohSliverTab();
  }
}

class _ContohSliver extends StatelessWidget {
  const _ContohSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("SliverAppBar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
                background: Image(
                  image: NetworkImage('https://pict-c.sindonews.net/dyn/620/pena/news/2021/12/11/207/625563/bill-gates-3-tahun-lagi-anda-akan-mulai-ngantor-di-metaverse-nrt.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Text("Belajar Flutter dengan roy"),
        ),
      ),
    );
  }
}

class _ContohSliverTab extends StatelessWidget {
  const _ContohSliverTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('https://pict-c.sindonews.net/dyn/620/pena/news/2021/12/11/207/625563/bill-gates-3-tahun-lagi-anda-akan-mulai-ngantor-di-metaverse-nrt.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorColor: Colors.black87,
                    tabs: [
                      Tab(icon: Icon(Icons.flight, color: Colors.black87,)),
                      Tab(icon: Icon(Icons.directions_transit, color: Colors.black87)),
                      Tab(icon: Icon(Icons.directions_car, color: Colors.black87)),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
