import 'package:dart_frog/dart_frog.dart';

import 'index.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method == HttpMethod.delete) {
    users.removeWhere((element) => element.id == id);
    return Response.json(body: users);
  } else if (context.request.method == HttpMethod.get) {
    final user = users.where((element) => element.id == id);
    if (user.isEmpty) {
      return Response(statusCode: 404, body: 'user for $id not found');
    } else {
      return Response.json(body: user.first);
    }
  } else {
    return Response(statusCode: 404);
  }
}