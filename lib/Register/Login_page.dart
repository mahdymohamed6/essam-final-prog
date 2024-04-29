import 'package:final_projectt/Home/home_screen.dart';
import 'package:final_projectt/Register/Signup_page.dart';
import 'package:final_projectt/Theme.dart';
import 'package:flutter/material.dart';
import 'Form_widget.dart';

class LoginScreen extends StatelessWidget {
  var EmailController=TextEditingController();
  var PasswordController=TextEditingController();
   static const String RouteName="login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyTheme.PrimaryLight ,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 40,vertical: 80),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo_light.png'),
                ],
              )
            ),
           SizedBox(height: 50,),

           FormWidget(title: 'Email', controller:EmailController ,),
            SizedBox(height: 20,),
            FormWidget(title: 'Password', controller: PasswordController,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('Forgot Password ?')),
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(HomeScreen.RouteName);
            }, child: Text('Login',style: Theme.of(context).textTheme.titleMedium,),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              backgroundColor: MyTheme.OrangeLight,
              padding: EdgeInsets.symmetric(horizontal: 35,vertical: 10)
            )),
            SizedBox(height: 25,),
            Text('OR'),
            TextButton(onPressed: (){
              Navigator.of(context).pushNamed(SignupScreen.RouteName);
            }, child: Text('Sign-Up'),),

          ],
        ),
      ),
    );
  }
}
