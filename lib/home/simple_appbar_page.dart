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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/background.jpg')),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
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
              Scaffold(
                backgroundColor: Colors.tealAccent,
                body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/homepage.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(child: buildPage('')),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Image(
                      image: NetworkImage(
                          'https://cs1.gtaall.com.br/screenshots/5a9f9/2019-01/original/f932b9a3babacd832edc86d2b663030be0c4aad2/708133-gallery1.jpg'),
                      width: 380,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildPage(' Nissan GTR R35'),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Disponivel hoje na sua loja vip o novo GTR, carro esportivo de otimo designer e com muitas alterações em tuning.',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          height: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Novas Atualizações',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(child: buildPage('')),
                  Text(
                    '* ADICIONADO SISTEMA DE /HORAS',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      '* AJUSTADO O SISTEMA DE FARME E VALORES DE PRODUTOS DE TODAS FACS',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 60),
                    child: Text(
                      '* CONCESSÓRIO ATUALIZADA',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(
                      image: NetworkImage(
                          'https://cdn.discordapp.com/attachments/936306543719223387/945340404868481024/logomegacity-removebg-preview.png'),
                      height: 250,
                    ),
                  ),
                ],
              ),
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
