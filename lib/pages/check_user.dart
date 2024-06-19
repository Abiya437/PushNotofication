import 'package:flutter/material.dart';
import 'package:push_notification_cli/controllers/auth_service.dart';

class CheckUser extends StatefulWidget {
  const CheckUser({super.key});

  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
  @override

  void initState() {
  AuthService.isLoggedIn().then((value){
    if(value){
      Navigator.of(context).pushReplacementNamed('/home');
    }else{
      Navigator.of(context).pushReplacementNamed('/login');
    }
  });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
