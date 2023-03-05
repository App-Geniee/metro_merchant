import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_strings.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/screens/auth/forgetpassword/phone.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';
import 'package:metro_merchant/views/screens/home/home_screen.dart';

import '../../../prefs/prefs.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final prefs=Get.find<MyPrefs>();
    bool _obscure=false;
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
                       Get.back();
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

            Padding(
              padding: const EdgeInsets.fromLTRB(19.0,80,0,0),
              child: Text(AppStrings.welcomeBack,style: TextStyle(fontSize: Dimensions.fontHeadingSmall,color: AppColors.colorBlack),),
            ),
            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Image(image: AssetImage("assets/icons/sing.png"),),

                        label:Text("Phone number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack600),
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
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(prefs.obscure.val?Icons.visibility:Icons.visibility_off,),
                          onPressed: (){
                            setState(() {
                              _obscure=!_obscure;
                            });
                          },
                        ),

                        label:Text("Password",style: TextStyle(fontSize: 12,color: AppColors.colorBlack600),
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
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(19,20,0,0),
              child: TextButton(
                onPressed: (){
                  Get.offAll(()=>Phone());
                },
                child: Text("Forgot password?",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
              ),
            ),
          SizedBox(height: 30,),
          CustomButton(context, "Login with phone", () {
            Get.offAll(()=>HomeScreen());
          }, AppColors.secondaryColor900),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(19,0,0,20),
              child: TextButton(
                onPressed: (){ Get.offAll(()=>SignUpScreen());},
                child: Text("Or create account",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
              ),
            ),

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
