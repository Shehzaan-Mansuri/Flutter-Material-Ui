import 'package:flutter/material.dart';

class Bottom_Nav extends StatefulWidget {

  @override
  _Bottom_NavState createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> with SingleTickerProviderStateMixin{
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
      ),
      body: TabBarView(
        children: [
          NewPage("First"),
          NewPage("Second"),
        ],
        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
        child: TabBar(
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
