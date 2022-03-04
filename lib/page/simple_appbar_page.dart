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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/background.jpg')),
                  ),
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                        'https://cdn.discordapp.com/attachments/936306543719223387/945385699140575232/logomegacity.png'),
                  ),
                  accountName: Text('Mega City'),
                  accountEmail: Text('megacity@gmail.com'),
                ),
                ListTile(
                  // Todos os icones do drawer
                  leading: Icon(Icons.home),
                  title: Text('Inicio'),
                  subtitle: Text('tela de inicio'),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Favoritos'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Amigos'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.description),
                  title: Text('Políticas'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Solicitação'),
                  //subtitle: Text('tela de inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configurações'),
                  //subtitle: Text('tela de inicio'),

                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Sair'),
                  subtitle: Text('Finalizar Sessão'),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Mega City'),
            centerTitle: true,
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
                Tab(icon: Icon(Icons.bolt), text: 'VIP News'),
                Tab(icon: Icon(Icons.update), text: 'Updates'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Center(
                      child: Container(
                    width: 150,
                    height: 150,
                    child: Image.network(
                        'https://cdn.discordapp.com/attachments/936306543719223387/945340404868481024/logomegacity-removebg-preview.png'),
                  ))
                ],
              ),
              buildPage('Feed de noticias'),
              buildPage('Novidades da loja vip '),
              buildPage('Atualizações no servidor'),
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
