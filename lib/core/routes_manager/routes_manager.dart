import 'package:evently_app/core/routes_manager/app_routes.dart';
import 'package:flutter/cupertino.dart';
import '../../features/authentication/login/login.dart';
import '../../features/authentication/register/register.dart';

class RoutesManager{
  static Route? router(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.register:{
        return CupertinoPageRoute(builder: (context) => Register());
      }
      case AppRoutes.login:{
        return CupertinoPageRoute(builder: (context) => Login());
      }
    }
  }
}