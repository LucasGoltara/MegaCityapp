import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinks extends StatelessWidget {
  Future<void> _launchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('nao pode ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Links Mega City')),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: Icon(Icons.star),
              label: Text('Loja Vip'),
              onPressed: () =>
                  _launchLink('https://five-m.store/loja/megacity'),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('Discord'),
              onPressed: () => _launchLink('https://discord.gg/WBfAtNCKR2'),
            ),
            TextButton.icon(
              icon: Icon(Icons.home),
              label: Text('Instagram'),
              onPressed: () =>
                  _launchLink('https://www.instagram.com/megacity_oficial/'),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('TikTok'),
              onPressed: () =>
                  _launchLink('https://www.tiktok.com/@oficial_megacity.rp'),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: Icon(Icons.star),
              label: Text('Loja Vip'),
              onPressed: () =>
                  _launchLink('https://five-m.store/loja/megacity'),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('Discord'),
              onPressed: () => _launchLink('https://discord.gg/WBfAtNCKR2'),
            ),
            TextButton.icon(
              icon: Icon(Icons.home),
              label: Text('Instagram'),
              onPressed: () =>
                  _launchLink('https://www.instagram.com/megacity_oficial/'),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('TikTok'),
              onPressed: () =>
                  _launchLink('https://www.tiktok.com/@oficial_megacity.rp'),
            ),
          ],
        ),
      ),
    );
  }
}
