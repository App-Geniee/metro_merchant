import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_successfull.dart';
class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                  padding: EdgeInsets.fromLTRB(2,60, 0, 0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Get.offAll(()=>SignUpScreen());
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
            SizedBox(height: 109,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child:    Text("Don’t worry!",style: TextStyle(color: AppColors.colorBlack,fontSize: 24),
            )
         ),
            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Image(image: AssetImage("assets/icons/sing.png"),),

                          label:Text("New  password",style: TextStyle(fontSize: 12,color: AppColors.colorBlack600),
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
                          suffixIcon: Icon(Icons.visibility,color: AppColors.colorBlack300,),

                          label:Text("Confirm password",style: TextStyle(fontSize: 12,color: AppColors.colorBlack600),
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
            SizedBox(height: 120,),
            CustomButton(context, "Continue", () { Get.offAll(()=>SignUpSucessfull());}, AppColors.secondaryColor)


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
