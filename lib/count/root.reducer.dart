import 'app.store.dart';
import 'reducers/count.reducer.dart';

void createReducers(AppStore appStore) {
  CountReducer(appStore);
}
