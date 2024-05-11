import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/locality.data.gql.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/locality.req.gql.dart';

class LocationsState {
  final bool? isLoading;
  final List<GLocationsData_locations?>? locations;

  LocationsState({
    this.isLoading,
    this.locations,
  });

  LocationsState copyWith({
    bool? isLoading,
    List<GLocationsData_locations?>? locations,
  }) {
    return LocationsState(
      isLoading: isLoading ?? this.isLoading,
      locations: locations ?? this.locations,
    );
  }
}

class LocationCubit extends Cubit<LocationsState> {
  LocationCubit() : super(LocationsState(isLoading: false, locations: []));
  StreamSubscription? _subscription;

  Future<void> fetchLocations(
    BuildContext context,
    String locationName,
    String routeId,
  ) async {
    initClient(context).then((client) {
      final fetchLocationsRq = GLocationsReq(
        (b) {
          b.vars.where.routeId = routeId;
          if (locationName.isNotEmpty) {
            b.vars.where.name = locationName;
          }
        },
      );
      emit(state.copyWith(isLoading: true));
      _subscription = client.request(fetchLocationsRq).listen((response) {
        if (response.data?.locations != null) {
          if (response.data?.locations != null) {
            emit(state.copyWith(
                isLoading: false,
                locations: response.data?.locations.toList()));
          } else {
            emit(state.copyWith(isLoading: false, locations: []));
          }
        }
        ;
      });
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
