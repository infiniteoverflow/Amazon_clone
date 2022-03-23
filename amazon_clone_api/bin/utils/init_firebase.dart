import 'package:firebase_dart/firebase_dart.dart';

import 'configuration.dart';

Future<FirebaseApp> initApp() async{
  late FirebaseApp app;

  try {
    app = Firebase.app();
  } catch(e) {
    app = await Firebase.initializeApp(
        options: FirebaseOptions.fromMap(Configuration.firebaseConfig));
  }

  return app;
}