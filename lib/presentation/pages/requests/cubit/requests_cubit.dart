import 'package:more_hands/core/core.dart';

part 'requests_state.dart';
part 'requests_cubit.freezed.dart';

@injectable
class RequestsCubit extends Cubit<RequestsState> {
  RequestsCubit() : super(const RequestsState.loading());

  void getRequests() {
    emit(const RequestsState.loaded(selectedFilter: "Все", selectedSection: 0, requests: [null, null, null]));
  }

  void changeSection(int section) {
    if(state is _RequestsLoadedState) {
      emit((state as _RequestsLoadedState).copyWith(selectedSection: section));
    } else {
      emit(RequestsState.loaded(selectedFilter: "Все", requests: [null, null, null], selectedSection: section));
    }
  }

  void changeFilter(String filter) {
    if(state is _RequestsLoadedState) {
      emit((state as _RequestsLoadedState).copyWith(selectedFilter: filter));
    } else {
      emit(RequestsState.loaded(selectedFilter: filter, requests: [null, null, null], selectedSection: 0));
    }
  }
}