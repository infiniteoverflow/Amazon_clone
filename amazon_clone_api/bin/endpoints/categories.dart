import 'dart:convert';

import 'package:firebase_dart/firebase_dart.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../utils/configuration.dart';
import '../utils/init_firebase.dart';

class Category {
  Handler get handler {
    final router = Router();

    // Get all the available categories from Firebase RDB
    router.get('/', (request) async {
      var app = await initApp();
      try {
        final db = FirebaseDatabase(
            app: app, databaseURL: Configuration.firebaseConfig['databaseURL']);
        final ref = db.reference().child('categories');

        Map<String, dynamic> responseData = {};

        await ref.once().then((value) {
          responseData = value.value;
        });

        Map<String, dynamic> result = {};
        result['categories'] = getCategoriesList(responseData);
        result['success'] = true;

        return Response.ok(json.encode(result),
            headers: {'content-type': 'application/json'});
      } catch (e) {
        var responseData = {
          'categories': null,
          'success': false,
          'error': e.toString(),
        };
        return Response.ok(json.encode(responseData),
            headers: {'content-type': 'application/json'});
      }
    });

    return router;
  }

  List getCategoriesList(Map<String, dynamic> responseData) {
    List result = [];
    responseData.forEach((key, value) {
      result.add(value);
    });

    return result;
  }
}
