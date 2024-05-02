import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/route.data.gql.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/route.req.gql.dart';

class RouteCubit extends Cubit<List<GGetRoutesData_getRoutes>> {

  RouteCubit() : super([]);

  Future<void> getRoutes(BuildContext context) async {
    
      // Make the GraphQL request to get the routes
    initClient(context).then((client) {
      final getRoutesRq = GGetRoutesReq();
      final re = client.request(getRoutesRq).listen((response) {
        emit(response.data?.getRoutes.toList() ?? []);
      });
      re.onError((error, stackTrace) {
        print(error);
      });
    });
  }
    
}
