import 'package:flutter/material.dart';

import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';


class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView( 
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue ),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed( context, HomePage.routeName ),
          ),

          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.blue ),
            title: Text('Pages'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon( Icons.people, color: Colors.blue ),
            title: Text('People'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Settings'),
            onTap: () {
              // Cierra el menu
              Navigator.pop(context);
              // Navega a la pagina de setting
              // Navigator.pushNamed( context, SettingsPage.routeName );

              // De esta manera desaparece el boton del header de la flecha 
              // de regresar y deja la pagina de settings como la principal
              // por lo que si regresa en la navegacion se cierra la app
              Navigator.pushReplacementNamed( context, SettingsPage.routeName );
            }
          )

        ]
      ),
    );
  }

}