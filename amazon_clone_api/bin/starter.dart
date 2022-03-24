import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'endpoints/categories.dart';
import 'endpoints/top_banner_ad.dart';

class Starter {
  Handler get handler {
    final router = Router();

    router.mount('/categories', Category().handler);
    router.mount('/topbannerads', TopBannerAd().handler);

    return router;
  }
}
