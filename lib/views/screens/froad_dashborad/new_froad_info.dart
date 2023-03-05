import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
class NewFroadInfo extends StatefulWidget {
  const NewFroadInfo({Key? key}) : super(key: key);

  @override
  _NewFroadInfoState createState() => _NewFroadInfoState();
}

class _NewFroadInfoState extends State<NewFroadInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 0,0),
              child: Text("(12 fraud entries found)",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),)),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10),

            itemCount: 5,
              itemBuilder: (context,index){
              return      Container(
                margin: EdgeInsets.fromLTRB(20,10,0,0),


                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  border: Border.all(color: AppColors.colorBlack100),
                  borderRadius: BorderRadius.circular(7),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,0,0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage("assets/icons/phone.png"),
                            width: 19,
                            height: 19,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text("01713***219",style: TextStyle(fontSize: 16,color: AppColors.secondaryColor900),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text("08PM 11 May 2022",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20,0),
                      child: Divider(
                        color: AppColors.colorBlack300,),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Name : Rakib ahmed sumon",style: TextStyle(fontSize: 16,color:AppColors.colorBlack),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                      child: Text("Details: products delivery na dile valo , ei protom ekta bed experience holo . delivery men nirupay hoye bolhe sir ei rokom lok k products delivery korben na."
                      ,style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
                    )



                  ],
                ),
              );
              },
            ),
          )
       ]
      )
    );
  }
}
