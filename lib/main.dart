import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:work1/screens/home_screen.dart';
import 'package:work1/screens/taken_picture_screen.dart';

// void main() {
// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();

//   final cameras = await availableCameras();
//   final firstCamera = cameras.first;

//   runApp(SqliteApp (firstCamera: firstCamera));
// }

void main() {
  runApp(const SqliteApp());
}

class SqliteApp extends StatelessWidget {
  final CameraDescription firstCamera;

  const SqliteApp({Key? key, required this.firstCamera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SQLite Example",
      initialRoute: "home",
      routes: {"home": (context) => TakenPictureScreen(camera: firstCamera,)},
      theme: ThemeData.light()
          .copyWith(appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 10, 190, 115))),
    );
  }
}
