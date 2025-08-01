import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:take_picture_flutter/ui/take_picture_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.camera});

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TakePictureScreen(camera: camera));
  }
}
