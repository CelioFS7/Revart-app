import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revart/pages/loginFistPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homePage.dart';

class BoasVindasPage extends StatefulWidget {
  const BoasVindasPage({Key? key}) : super(key: key);

  @override
  _BoasVindasPageState createState() => _BoasVindasPageState();
}

class _BoasVindasPageState extends State<BoasVindasPage> {
  
  @override
  void initState() {
    
    super.initState();
    verificarToken().then((value) {
      if (value){
        Navigator.pushReplacement(
          context,
            MaterialPageRoute
              (builder: (context) => HomePage(),
            ),
        );
      }else{
        Navigator.pushReplacement(
          context,
          MaterialPageRoute
            (builder: (context) => LoginFistPage(),
          ),
        );
        
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  Future<bool>verificarToken() async{
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    if(sharedPreference.getString("token") != null){
      return true;
    }else{
      return false;
    }
  }
}
