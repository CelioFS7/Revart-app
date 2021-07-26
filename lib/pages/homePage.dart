import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revart/pages/loginFistPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("images/logo_colorida.png"),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          child: (SizedBox.expand(
           child: TextButton(
             child: Column(
               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Container(
                   child: Image.asset("images/imagePerfil.jpg"),
                     height: 40,
                     width: 40,
                   ),
               ],
             ),
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => LoginFistPage(),
                 ),
               );
             },

           ),
          )
          ),
          /*decoration: new BoxDecoration(
            image: new DecorationImage(
                image: AssetImage("images/imagePerfil.jpg"),//imagem de usuario
              fit: BoxFit.fitHeight,
            ),
          ),*/
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: TextButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: ()=>{},
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem(){
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage (
                "https://abglt.org.br/wp-content/uploads/2020/07/tumblr-lgbt-lgbtq11.jpg"
            ),
          ),
          title: Text("Maykon Douglas"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),//Ações do lado direito da tela os 3 pontinhos
        ),
        Container(
          child: Image.asset("images/imagem.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(13),
          child: Text(
            "Olha só meu novo desenho, Chiclas que chiclas @DivaDepressao ",
          ),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              TextButton(
                child: Icon(Icons.favorite),
                onPressed: (){},
              ),
              TextButton(
                child: Icon(Icons.share),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}