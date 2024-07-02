import 'package:castle/components/bottom_nav_bar.dart';
import 'package:castle/pages/cart_page.dart';
import 'package:castle/pages/shop_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex=0;
  //this method will update our selected index
  //when the user tap on the bottom bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    }); 
  }
  //list
  final List<Widget> _pages=[
    const ShopPage(),
    const CartNav(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
      onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(backgroundColor:Colors.transparent,
      elevation: 0,
      leading: Builder(builder: (context) => IconButton(
        icon: const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Icon(Icons.menu,
          color: Colors.black,
          ),
        ),
      onPressed:() {
        Scaffold.of(context).openDrawer();
      },
      ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                //logo
            DrawerHeader(child: Image.asset('lib/images/castle.png',
            ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.transparent,
              ),
            ),

            //other pages

            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text("Home",
                style: TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
                ),        
              ),
            ),

            //home end
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
                title: Text("About",
                style: TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
                ),
               ),
            ),
            ],
            ),
            //info end

            const Padding(
              padding: EdgeInsets.only(left: 25.0,bottom: 30),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text("Logout",
                style: TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
                ),
              ),
            )
              
          ],
        ),
      ),

      body: _pages[_selectedIndex],
    );
  }
}