// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;

import '../../data/datasources/listing_remote_data_source.dart' as _i268;
import '../../data/datasources/listing_remote_data_source_impl.dart' as _i532;
import '../../data/repositories/listing_repository_impl.dart' as _i1042;
import '../../data/services/fake_listing_api_service.dart' as _i25;
import '../../data/services/listing_api_service.dart' as _i377;
import '../../domain/repositories/listing_repository.dart' as _i54;
import '../../domain/use_case/add_listing.dart' as _i317;
import '../../domain/use_case/delete_listing.dart' as _i686;
import '../../domain/use_case/get_listing.dart' as _i779;
import '../../domain/use_case/get_listings.dart' as _i918;
import '../../domain/use_case/update_listing.dart' as _i144;
import '../../presentation/bloc/favorites_bloc.dart' as _i110;
import '../../presentation/bloc/listing_bloc.dart' as _i413;
import '../network/network_info.dart' as _i932;
import '../network/network_info_module.dart' as _i482;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkInfoModule = _$NetworkInfoModule();
    gh.factory<_i110.FavoritesBloc>(() => _i110.FavoritesBloc());
    gh.singleton<_i161.InternetConnection>(
        () => networkInfoModule.internetConnectionChecker);
    gh.singleton<_i377.ListingApiService>(() => _i25.FakeListingApiService());
    gh.singleton<_i932.NetworkInfo>(
        () => _i932.NetworkInfoImpl(gh<_i161.InternetConnection>()));
    gh.singleton<_i268.ListingRemoteDataSource>(
        () => _i532.ListingRemoteDataSourceImpl(gh<_i377.ListingApiService>()));
    gh.singleton<_i54.ListingRepository>(() => _i1042.ListingRepositoryImpl(
          gh<_i932.NetworkInfo>(),
          gh<_i268.ListingRemoteDataSource>(),
        ));
    gh.factory<_i918.GetListings>(
        () => _i918.GetListings(gh<_i54.ListingRepository>()));
    gh.factory<_i686.DeleteListing>(
        () => _i686.DeleteListing(gh<_i54.ListingRepository>()));
    gh.factory<_i779.GetListing>(
        () => _i779.GetListing(gh<_i54.ListingRepository>()));
    gh.factory<_i144.UpdateListing>(
        () => _i144.UpdateListing(gh<_i54.ListingRepository>()));
    gh.factory<_i317.AddListing>(
        () => _i317.AddListing(gh<_i54.ListingRepository>()));
    gh.factory<_i413.ListingBloc>(() => _i413.ListingBloc(
          get: gh<_i918.GetListings>(),
          delete: gh<_i686.DeleteListing>(),
          update: gh<_i144.UpdateListing>(),
          add: gh<_i317.AddListing>(),
        ));
    return this;
  }
}

class _$NetworkInfoModule extends _i482.NetworkInfoModule {
  @override
  _i161.InternetConnection get internetConnectionChecker =>
      _i161.InternetConnection();
}
