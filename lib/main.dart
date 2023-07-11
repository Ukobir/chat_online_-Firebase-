import 'package:chat/chat.screen.dart';
import 'package:chat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
  //print
  // FirebaseFirestore.instance.collection('mensagens').doc('msg1').snapshots().listen((dado) {
  //     print(dado.data());
  // });
  //mandar
  // FirebaseFirestore.instance
  //     .collection('mensagens')
  //     .doc('a9xTxo0syvsIuAtfn1Ss')
  //     .collection('arquivos')
  //     .doc().set({'arqname': 'foto.png'});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        iconTheme: const IconThemeData(
          color: Colors.indigoAccent,
        ),
      ),
      home:  const ChatScreen(),
    );
  }
}
