import 'package:tanta_app/presentation/base/base_view_model.dart';

class FeedStatesViewModel extends FeedStatesViewModelInput{
  @override
  void start() {
    // TODO: implement start
  }
}
abstract class FeedStatesViewModelInput extends FeedStatesViewModelOutput{}
abstract class FeedStatesViewModelOutput extends BaseViewModel{}