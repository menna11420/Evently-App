import 'package:evently_app/core/resources/assets_manager.dart';
import 'package:evently_app/core/widgets/custom_elevated_button.dart';
import 'package:evently_app/core/widgets/custom_text_button.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool securePassword = true;
  bool secureRePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: REdgeInsets.only(left: 8,right: 8,bottom: MediaQuery.of(context).viewInsets.top),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(ImagesAssets.eventlyLogo),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: _onTogglePasswordIconClicked,
                      icon: Icon(securePassword ? Icons.visibility_off : Icons.visibility),
                    ),
                    isSecure: securePassword,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    labelText: "Re Password",
                    prefixIcon: Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: _onToggleRePasswordIconClicked,
                      icon: Icon(secureRePassword ? Icons.visibility_off : Icons.visibility),
                    ),
                    isSecure: secureRePassword,
                  ),
                  SizedBox(height: 16.h),
                  CustomElevatedButton(text: "Create Account", onPress: (){}),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have Account ? ",style: Theme.of(context).textTheme.bodySmall,),
                      CustomTextButton(text: "Login", onTap: (){})
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onTogglePasswordIconClicked(){
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onToggleRePasswordIconClicked(){
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
}
