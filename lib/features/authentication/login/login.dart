import 'package:evently_app/core/resources/assets_manager.dart';
import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:evently_app/core/resources/validators.dart';
import 'package:evently_app/core/widgets/custom_elevated_button.dart';
import 'package:evently_app/core/widgets/custom_text_button.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/routes_manager/app_routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool securePassword = true;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 47,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(ImagesAssets.eventlyLogo),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      controller: _emailController,
                      validator: Validator.validateEmail,
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.email),
                    ),
                    SizedBox(height: 16.h),
                    CustomTextFormField(
                      controller: _passwordController,
                      validator: Validator.validatePassword,
                      isSecure: securePassword,
                      labelText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: _onTogglePasswordIconClicked,
                        icon: Icon(
                          securePassword ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    CustomTextButton(
                      text: "Forget Password?",
                      onTap: () {},
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 24.h),
                    CustomElevatedButton(text: "Login", onPress: _login),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t Have Account ? ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        CustomTextButton(
                          text: "Create Account",
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.register,
                            );
                          },
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: ColorsManager.blue,
                            endIndent: 16.w,
                            indent: 42.w,
                          ),
                        ),
                        Text(
                          "Or",
                          style: GoogleFonts.inter(
                            color: ColorsManager.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: ColorsManager.blue,
                            endIndent: 42.w,
                            indent: 16.w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/google_icon.svg"),
                          SizedBox(width: 4.w,),
                          Text("Login With Google",style: GoogleFonts.inter(color: ColorsManager.blue,fontSize: 20.sp,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTogglePasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _login() {
    if(_formKey.currentState?.validate() == false) return;
  }
}
