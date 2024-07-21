import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
// import 'package:hive/hive.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
// *** If using flutter ***
import 'package:hive_flutter/hive_flutter.dart';

import 'package:gql_exec/gql_exec.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';

class AuthLink extends Link {
  final Future<String?> Function() getToken;

  AuthLink({required this.getToken});

  @override
  Stream<Response> request(Request request, [forward]) async* {
    final token = await getToken();
    final modifiedRequest = request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(
        headers: <String, String>{
          ...?headers?.headers,  // Corrected line
          if (token != null) 'Authorization': 'Bearer $token',
        },
      ),
    );

    yield* forward!(modifiedRequest);
  }
}


Future<Client> initClient(BuildContext context) async {
  //Hive.init('hive_data');
  // OR, if using flutter
  await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  //final httpLink = HttpLink('https://solufacil-graphql.onrender.com/graphql');
  final httpLink = HttpLink('http://192.168.1.65:4000/graphql');
  //final httpLink = HttpLink('http://127.0.0.1:4000/graphql');

  
  final authLink = AuthLink(
    getToken: () async {
      print("Executing getToken");
      final state = BlocProvider.of<AuthenticationCubit>(context).state;
      return state.token;
    },
  );

  final link = authLink.concat(httpLink);
  print("initClient0");

  final client = Client(
    link: link,
    //cache: cache,
  );

  return client;
}
