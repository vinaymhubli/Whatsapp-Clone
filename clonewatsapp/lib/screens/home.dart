import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'calls.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
          backgroundColor: Color(0xff075E54),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_outlined),
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.white),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(
                child: Text("CHATS", style: Theme.of(context).textTheme.button),
              ),
              Tab(
                child:
                    Text("STATUS", style: Theme.of(context).textTheme.button),
              ),
              Tab(
                child: Text("CALLS", style: Theme.of(context).textTheme.button),
              )
            ],
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light)),
      body: TabBarView(
        controller: _tabController,
        children: [Camera(), Chat(), Status(), Calls()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff075E54),
        child: Icon(Icons.message_rounded, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
