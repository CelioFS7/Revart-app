import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revart/pages/homePage.dart';
import 'package:revart/pages/registerPage.dart';
import 'package:revart/pages/reset-password.dart';

class LoginFistPage extends StatelessWidget {
  const LoginFistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      color: Colors.black,//cor da tela de fundo
      child: ListView(
        children: <Widget>[
          SizedBox(//para diminuir o tamanho da logo
            width: 300,
            height: 300,
            child: Image.asset("images/logo_colorida.png"),
          ),
          SizedBox(
            height: 20,
          ),
        TextFormField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "E-mail",
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          style: TextStyle(// fonte do testo
            fontSize: 22,
          ),
        ),
          SizedBox(//espaço entre o email e senha
            height: 10,
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            style: TextStyle(// fonte do testo
              fontSize: 22,
            ),
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,//Alinhamento a direita
            child: TextButton(
              child: Text(
                "Recuperar Senha",
                style: (
                TextStyle(
                color: Colors.white
                )
                ),
                textAlign: TextAlign.justify,

              ),
              onPressed: (){
                Navigator.push(
                  context,
                    MaterialPageRoute(
                      builder: (context)=> ResetPasswordPage(),
                    ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1.3,2,3], //Começa na primeira cor e termina na segunda
                colors: [
                  Colors.pink,
                  Colors.blueAccent,
                  Colors.yellow,
                  Colors.blue,
                ],
              ),
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            ),
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("images/Logo_branca.png"),
                        height: 100,
                        width: 100,
                      ),

                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3,1.3,2,3], //Começa na primeira cor e termina na segunda
                colors: [
                  Colors.blue,
                  Colors.yellowAccent,
                  Colors.yellow,
                  Colors.blue,
                ],
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(10)
              ),
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login com o Google",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("images/Logo_branca.png"),
                        height: 100,
                        width: 100,
                      ),

                    ),
                  ],
                ),
                onPressed: (){},
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: TextButton(
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
            ),
          ),
        ],
      ),
    ),
    );
  }
}

