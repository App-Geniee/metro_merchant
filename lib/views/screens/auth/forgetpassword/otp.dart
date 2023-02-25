import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
class OtpSent extends StatefulWidget {
  const OtpSent({Key? key}) : super(key: key);

  @override
  _OtpSentState createState() => _OtpSentState();
}

class _OtpSentState extends State<OtpSent> {
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


              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child:  Text("Phone Verification",style: TextStyle(fontSize: 14,color: Colors.black),)
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Enter your OTP code",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Enter the 5-digit code sent to you at",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("+880 1791635898",style: TextStyle(fontSize: 14,color: Colors.black),),
                ),
                Text(".did you enter the correct",style: TextStyle(fontSize: 14,color: AppColors.colorGreen),)

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child:Text("number?",style: TextStyle(fontSize: 14,color: AppColors.colorGreen),)
              ,
            ),
          SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Enter verification code",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),
            ),
            SizedBox(height: 10,),
            OTPTextField(

              length: 5,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 40,

              style: TextStyle(
                  fontSize: 17,
                color: Colors.black
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,

              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Resend code in ",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Text("10 second ",style: TextStyle(fontSize: 14,color: AppColors.secondaryColor900),),
                Padding(
                  padding: EdgeInsets.fromLTRB(120,0,10,0),
                  child:  InkWell(
                    onTap: (){},
                    child: CircleAvatar(

                      backgroundColor: AppColors.secondaryColor900,
                      radius: 20,
                      child: Icon(Icons.arrow_forward,color: Colors.white,),
                    ),
                  ) ,
                )

              ],
            )


          ],
        ),
      ),

    );
  }
}
