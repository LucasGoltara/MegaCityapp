import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class TransparentAppBarPage extends StatelessWidget {
  Future<void> _launchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('Nao Pode ');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Center(child: Text(' Mega City Links')),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/cidadeanimada.jpg')),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                icon: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                label: Text(
                  'Loja Vip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                onPressed: () =>
                    _launchLink('https://five-m.store/loja/megacity'),
              ),
              TextButton.icon(
                icon: Icon(
                  FontAwesome.link,
                  color: Colors.blue,
                ),
                label: Text(
                  'Discord',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                onPressed: () => _launchLink('https://discord.gg/WBfAtNCKR2'),
              ),
              TextButton.icon(
                icon: Icon(
                  FontAwesome.instagram,
                  color: Colors.red,
                ),
                label: Text(
                  'Instagram',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                onPressed: () =>
                    _launchLink('https://www.instagram.com/megacity_oficial/'),
              ),
              TextButton.icon(
                icon: Icon(
                  FontAwesome.music,
                  color: Colors.orange,
                ),
                label: Text(
                  'TikTok',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                onPressed: () =>
                    _launchLink('https://www.tiktok.com/@oficial_megacity.rp'),
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                label: Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.white, fontSize: 40, fontFamily: 'Roboto'),
                ),
                onPressed: () => _launchLink('mcityfivem@gmail.com'),
              ),
            ],
          ),
        ),
      );
}
