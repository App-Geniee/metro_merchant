import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metro_merchant/views/screens/froad_dashborad/froad_add_new.dart';
import 'package:metro_merchant/views/screens/froad_dashborad/froad_serach.dart';
import 'package:metro_merchant/views/screens/froad_dashborad/new_froad_info.dart';
import 'package:metro_merchant/views/screens/home/bottomNavigationBar/homebar.dart';

import '../../../core/utils/app_colors.dart';

class FroadDashBorad extends StatefulWidget {
  const FroadDashBorad({Key? key}) : super(key: key);

  @override
  _FroadDashBoradState createState() => _FroadDashBoradState();
}

class _FroadDashBoradState extends State<FroadDashBorad> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: AppBar(
            backgroundColor: AppColors.primaryColor,

          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: IconButton(
                    onPressed: () {
                      Get.offAll(() => HomeBar());
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              )
            ],
          ),
          Divider(
            color: AppColors.colorBlack300,
          ),
          SizedBox(height: 10,),

          TabBar(


            labelColor: AppColors.secondaryColor900,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.secondaryColor900,
            dividerColor: AppColors.secondaryColor900,

            tabs: [
              Tab(
                child: Text("Entries",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
              ),
              Tab(
                child: Text("Add New",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
              ),
              Tab(
                child: Text("Search",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
               NewFroadInfo(),
               FroadAdd(),
               FroadSerach()
              ],
            ),
          ),


        ]),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:metro_merchant/core/utils/app_colors.dart';
// import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';
// import 'package:metro_merchant/views/screens/home/bottomNavigationBar/homebar.dart';
//
// class FroadDashBorad extends StatefulWidget {
//   const FroadDashBorad({Key? key}) : super(key: key);
//
//   @override
//   _FroadDashBoradState createState() =>
//       _FroadDashBoradState();
// }
//
// class _FroadDashBoradState extends State {
//   int _selectedTab = 0;
//
//   List _pages = [
//     HomeBar(),
//     Center(
//       child: Text("Home"),
//     ),
//     Center(
//       child: Text("About"),
//     ),
//     Center(
//       child: Text("Products"),
//     ),
//     Center(
//       child: Text("Contact"),
//     ),
//     Center(
//       child: Text("Settings"),
//     ),
//   ];
//
//   _changeTab(int index) {
//     setState(() {
//       _selectedTab = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: _pages[_selectedTab],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedTab,
//         onTap: (index) => _changeTab(index),
//         selectedItemColor: AppColors.secondaryColor900,
//         unselectedItemColor:AppColors.primaryColor400,
//         items: [
//           BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/homeicon.png",),width: 24,), label: ""),
//           BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/truck-01.png"),width: 24,), label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.add), label: ""),
//           BottomNavigationBarItem(
//               icon: Image(image: AssetImage("assets/icons/todoicon.png"),width: 24,), label: ""),
//           BottomNavigationBarItem(
//               icon: Image(image: AssetImage("assets/icons/profile.png"),width: 24,), label: ""),
//         ],
//       ),
//     );
//   }
// }
