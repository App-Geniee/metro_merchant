import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/views/screens/add_payment/add_payment.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/password.dart';
class SignUpSucessfull extends StatefulWidget {
  const SignUpSucessfull({Key? key}) : super(key: key);

  @override
  _SignUpSucessfullState createState() => _SignUpSucessfullState();
}

class _SignUpSucessfullState extends State<SignUpSucessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/shaplogin.png"),
                          fit: BoxFit.fill
                      )
                  ),

                  // child: Image(
                  //   image: AssetImage("assets/images/shaplogin.png"),
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2,60, 0, 0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Get.offAll(()=>Password());
                      },
                          icon: Icon(Icons.arrow_back,color: Colors.white,)),
                      SizedBox(width: 12,),
                      Text("Back",style: TextStyle(color: Colors.white,fontSize: 16),),

                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 62),

                    width: 109,
                    height: 49.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:  AssetImage("assets/images/mainlogo.png")
                        )
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(height: 100,),
            Image(image: AssetImage("assets/icons/Ok.png")),
            SizedBox(height: 16,),
            Text("You have successfully\n         signed up",style: TextStyle(fontSize: 24,color: AppColors.colorBlack),),
            SizedBox(height: 10,),
            Text("Now let’s add your payment method in just \n           10 second and get quick approval",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
            SizedBox(height: 100,),
            CustomButton(context, "Add new payment method", () {Get.offAll(()=>AddPayment()); }, AppColors.secondaryColor)

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
            borderRadius: BorderRadius.all(Radius.circular(3)),


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
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward,color: Colors.white,),
                )

              ],

            ),
          ),

        ),
      ) ,
    );
  }
}
