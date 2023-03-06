import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metro_merchant/views/screens/oder_history/all_order_histroy.dart';

import '../../../core/utils/app_colors.dart';
import '../home/home_screen.dart';
class OrderHistroy extends StatefulWidget {
  const OrderHistroy({Key? key}) : super(key: key);

  @override
  _OrderHistroyState createState() => _OrderHistroyState();
}

class _OrderHistroyState extends State<OrderHistroy> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: AppColors.primaryColor,
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Get.offAll(()=>HomeScreen());
                    },
                    icon: Icon(Icons.arrow_back,size: 20,color: AppColors.colorBlack,),
                  ),
                  Text("Order History",style: TextStyle(fontSize: 16,color: AppColors.colorBlack,fontWeight: FontWeight.w700),)
                ],
              ),
              Divider(
                color: AppColors.colorBlack300,
              ),
              SizedBox(height: 10,),
              TabBar(
                labelColor: Colors.black, //<-- selected text color
                unselectedLabelColor: Colors.white,
                indicatorColor: AppColors.secondaryColor900,

                tabs: [
                  Tab(
                    child: Text("All",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorBlack300),),
                  ),
                  Tab(
                    child: Text("Active",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorBlack300),),
                  ),
                  Tab(
                    child: Text("Delivered",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorBlack300),),
                  ),
                  Tab(
                    child: Text("Returned",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorBlack300),),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(

                  children: [
                    AllOrderHistroy(),
                    Text("All"),
                    Text("All"),
                    Text("All"),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
