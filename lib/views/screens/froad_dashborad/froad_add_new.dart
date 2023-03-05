import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
class FroadAdd extends StatefulWidget {
  const FroadAdd({Key? key}) : super(key: key);

  @override
  _FroadAddState createState() => _FroadAddState();
}

class _FroadAddState extends State<FroadAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                      child: TextFormField(

                        decoration: InputDecoration(


                          label:Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Phone number of dispute.",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(

                                color: AppColors.colorBlack300),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.colorBlack300)
                          ),

                        ),



                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                      child: TextFormField(

                        decoration: InputDecoration(


                          label:Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Name of dispute.",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(

                                color: AppColors.colorBlack300),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.colorBlack300)
                          ),

                        ),



                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                      child: TextFormField(

                        decoration: InputDecoration(


                          label:Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Name of dispute.",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(

                                color: AppColors.colorBlack300),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.colorBlack300)
                          ),

                        ),



                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,80,20.0,0),
                      child: TextFormField(

                        decoration: InputDecoration(


                          label:Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Text("Write your comment.",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(

                                color: AppColors.colorBlack300),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.colorBlack300)
                          ),

                        ),



                      ),
                    ),
                    SizedBox(height: 20,),



                  ],
                ),
            ),
             ),
            SizedBox(height: 20,),
            CustomButton(context, "Add New", () { }, AppColors.secondaryColor900)
          ],
        ),
      ),
    );
  }
  Widget CustomButton(BuildContext context,String text,void Function()function,Color color){
    return InkWell(

      onTap: function,
      child:Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          height:52,
          width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(9)),


          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),
                  ),
                ),


              ],

            ),
          ),

        ),
      ) ,
    );
  }

}
