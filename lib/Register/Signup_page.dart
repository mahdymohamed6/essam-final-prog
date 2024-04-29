import 'package:final_projectt/Register/Login_page.dart';
import 'package:final_projectt/Theme.dart';
import 'package:flutter/material.dart';

import 'Form_widget.dart';

class SignupScreen extends StatelessWidget {
  var NameController=TextEditingController();
  var PhoneController=TextEditingController();
  var EmailController=TextEditingController();
  var PasswordController=TextEditingController();
  var ConfirmController=TextEditingController();
  var CarModelController=TextEditingController();
  var CarYearController=TextEditingController();
  static const String RouteName="Sign";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyTheme.PrimaryLight,
      appBar: AppBar(
        backgroundColor: MyTheme.PrimaryLight,elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back),color: MyTheme.OrangeLight ,onPressed:(){
          Navigator.pop(context);
        }),
        title: Image.asset('assets/images/logo_light.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        child: ListView(
          children:[ Column(
            children: [

              FormWidget(title: 'Name', controller: NameController,),
              SizedBox(height: 20,),
              FormWidget(title: 'Phone', controller: PhoneController,),
              SizedBox(height: 20,),
              FormWidget(title: 'Email', controller: EmailController,),
              SizedBox(height: 20,),
              FormWidget(title: 'Password', controller: PasswordController,),
              SizedBox(height: 20,),
              FormWidget(title: 'Confirm-Password', controller: ConfirmController,),
              SizedBox(height: 20,),
              FormWidget(title: 'Car Model', controller: CarModelController,),
              SizedBox(height: 20,),
              FormWidget(title: 'Car Year', controller: CarYearController,),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed(LoginScreen.RouteName);
                }, child: Text('Sign-Up',style: Theme.of(context).textTheme.titleMedium,),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 10)
                  )),
              SizedBox(height: 10,),

            ],
          ),
    ],
        ),
      ),
    );
  }
}
