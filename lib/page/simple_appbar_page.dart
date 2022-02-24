import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                        'https://cdn.discordapp.com/attachments/936306543719223387/945385699140575232/logomegacity.png'),
                  ),
                  accountName: Text('Mega City'),
                  accountEmail: Text('megacity@gmail.com'),
                ),
                ListTile(
                  //Icones do drawer
                  leading: Icon(Icons.home),
                  title: Text('Inicio'),
                  subtitle: Text('tela de inicio'),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/simple_appbar_page.dart');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favorites'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Friends'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.description),
                  title: Text('Policies'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Request'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('settings'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Exit'),
                  subtitle: Text('Finalizar Sessão'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Mega city'),
            centerTitle: true,
            //leading: IconButton(
            //icon: Icon(Icons.menu),
            //onPressed: () {},
            //),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Feed'),
                Tab(icon: Icon(Icons.link), text: 'Links'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              buildPage('Home Page'),
              buildPage('Feed Page'),
              buildPage('Links Mega City'),
              buildPage('Settings Page'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
