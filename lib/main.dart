//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:revart/pages/boasVindasPage.dart';
import 'package:revart/pages/loginFistPage.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() async {
/*
  //CONFIGURAÇÕES DO FIREBASE
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //FirebaseFirestore db = FirebaseFirestore.instance;

  /*db.collection("usuarios")
      .doc("001")
      .set({
    "nome": "Fulano"
      }
    );*/

   //configuração do firebase
  FirebaseAuth auth = FirebaseAuth.instance;
  /*
  Criando usuario com email e senha
  * */
  String email="Jamilton@gmail.com";
  String senha ="1234567";

  auth.createUserWithEmailAndPassword(
      email: email,
      password: senha
  ).then((firebaseUser){
    //print("Novo usuario: Sucesso!! email: " + firebaseUser.user.email );
  }).catchError((erro){
    //print("Novo usuario: Error!! email:" erro.toString());
  });
  //usuario logado ou deslogado
  User? usuarioAtual = await auth.currentUser;
  if( usuarioAtual != null){//logado
    //print("Usuario atual logado email: " + usuarioAtual.email);
  }else{//deslogado
  print("Usuario atual esta deslogado");
  }

  //Mostrar que o usuario esta logado

  //auth.signOut();// Para deslogar o usuario

 /* auth.signInWithEmailAndPassword(
      email: email,
      password: senha,
  ).then((firebaseUser){
    \\print ("Logar usuario: Sucesso !! email: " + firebaseUser.user.email);
  }).catchError((erro){
    print ("Logar usuario: error !! email: " + erro.toString());
  });*/ // Para logar usuario
*/


  runApp(revartapp());
}

class revartapp extends StatefulWidget {
  const revartapp({Key? key}) : super(key: key);

  @override
  _revartappState createState() => _revartappState();
}

class _revartappState extends State<revartapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Revart",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BoasVindasPage(),
    );
  }
}
