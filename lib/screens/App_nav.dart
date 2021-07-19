import 'package:flutter/material.dart';

class Top_Nav extends StatefulWidget {

  @override
  _Top_NavState createState() => _Top_NavState();
}

class _Top_NavState extends State<Top_Nav> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.email),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          NewPage("First"),
          NewPage("Second"),
        ],
        controller: tabController,
      ),
    );
  }
}



class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
