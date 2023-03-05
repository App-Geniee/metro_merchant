import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
class FroadSerach extends StatefulWidget {
  const FroadSerach({Key? key}) : super(key: key);

  @override
  _FroadSerachState createState() => _FroadSerachState();
}

class _FroadSerachState extends State<FroadSerach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,40,0.0,0),
            child: TextFormField(


              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: CustomButton(context, "Search", () { }, AppColors.secondaryColor900),


                label:Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("Search by number.",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
          SizedBox(height:220,),
          Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/icons/searchf.png"),
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 10,),
                Text("No complaint found",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),)
              ],
            )
          ),

        ],
      ),

    );
  }
  Widget CustomButton(BuildContext context,String text,void Function()function,Color color){
    return InkWell(

      onTap: function,
      child:Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          height:40,
          width: 86,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(5)),


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
