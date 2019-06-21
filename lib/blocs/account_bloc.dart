
import 'package:rxdart/rxdart.dart';
import 'package:merchforce_mobile/models/account.dart';


class _AccountBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<Account>();

  Observable<Account> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    Account itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}