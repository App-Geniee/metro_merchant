import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_strings.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/screens/auth/forgetpassword/otp.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';

import '../sign_in/sign_in_screen.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: EdgeInsets.fromLTRB(2, 60, 0, 0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Get.offAll(SignInScreen());
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
                SizedBox(height: 100,),


              ],
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Hello, nice to meet you!",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Join our platform!",style: TextStyle(fontSize: 24,color: Colors.black),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Form(
                child:    TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Image(image: AssetImage("assets/icons/sing.png"),),

                    label:Text("Phone number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                    ),
                    enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                      borderSide: BorderSide(
                          color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.colorBlack300)
                    ),

                  ),



                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("By creating an account, you agree to our Terms of Service and Privacy Policy.",style: TextStyle(fontSize: 14,color: Colors.black),),
            ),
            SizedBox(height: 70,),
            CustomButton(context, "Get verification code", () { Get.offAll(()=>OtpSent());}, AppColors.secondaryColor500)





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
            borderRadius: BorderRadius.all(Radius.circular(7)),


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
