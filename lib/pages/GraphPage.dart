import 'package:flutter/material.dart';
import 'package:recieptify/components/piechart2.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({Key? key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40,left:10,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Krish!",style: TextStyle(color: Color(0xFF2D5056),fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(height: 2),
                          Text("Here are your expense stats!",style: TextStyle(color: Color(0xFF2D5056))),
                  
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage:AssetImage("lib/images/phy.jpg") ,
                         ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(color: Color(0xFF90DCD0),borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 300,
                  width: 400,
                  child: PieChartSample2(),
                ),
                SizedBox(height: 20,),
                DefaultTabController(
                  length: 4, // Number of tabs
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Color(0xFF2D5056), // Underline color
                        labelColor: Color(0xFF2D5056), // Text color for selected tab
                        unselectedLabelColor: Colors.black, // Text color for unselected tabs
                        tabs: [
                          Tab(text: 'Grocery'),
                          Tab(text: 'Food'),
                          Tab(text: 'Other'),
                          Tab(text: 'Bank'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 200, // Height of the tab bar view
                        child: TabBarView(
                          children: [
                            // Content for Tab 1
                            Center(child: Text('Grocery expenses')),
                            // Content for Tab 2
                            Center(child: Text('Tab 2 content')),
                            // Content for Tab 3
                            Center(child: Text('Tab 3 content')),
                            Center(child: Text('Tab 4 content')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
