import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PixEz Tech Support',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'PixEz Tech Support'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            InkWell(
              onTap: (){
                launch("https://apps.apple.com/us/app/pixez/id1494435126");
              },
              child: Row(children: [
                FaIcon(FontAwesomeIcons.appStore),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("前往App store"),
                )
              ],mainAxisSize: MainAxisSize.min,),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("App:"),
                  ),
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/Notsfsssf/pixez-flutter/master/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("PixEz"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("开发者:"),
                  ),
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/16934707?v=4"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Perol_Notsf"),
                  ),
                ],
              ),
              Container(height: 20,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "这里是PixEz的技术支持页",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Text(
                '如果你有建议或者问题，可以联系开发者的邮箱',
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Email:'),
                  TextButton(
                      onPressed: () async {
                        const mailUrl = 'mailto:PxEzFeedBack@Outlook.com';
                        try {
                          await launch(mailUrl);
                        } catch (e) {}
                      },
                      child: Text("PxEzFeedBack@Outlook.com"))
                ],
              ),
              InkWell(
                onTap: () {
                  launch("https://github.com/Notsfsssf/pixez-flutter/issues");
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FaIcon(FontAwesomeIcons.github),
                    Text("或是前往Github repo"),
                    Text("提Issues留言")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "祝你天天开心 :)",
                ),
              ),
            ],
          ),
        ));
  }
}
