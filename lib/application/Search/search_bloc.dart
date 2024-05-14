import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Models/Search/i_search_repo.dart';

import '../../core/failures/mainFailure.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final I_Search_Repo obj_search_repo;
  SearchBloc(this.obj_search_repo) : super(SearchState.initial()) {
    on<_SearchItem>((event, emit) async {
      final overviewResult = await obj_search_repo.searchitem(searchquery: event.query);
      final overviewemit = overviewResult.fold(
          (mainFailure failure) => const SearchState( 
              searchItems: [],
              isLoading: false,
              iserror: true), (List<Map<String, dynamic>> result) {
        return SearchState(
            searchItems: result, isLoading: false, iserror: false);
      });
      emit(overviewemit);
    });
  }
}
