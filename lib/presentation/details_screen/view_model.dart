import 'dart:async';

import 'package:tanta_app/presentation/base/base_view_model.dart';

class DetailsViewModel extends DetailsViewModelInput{
  final StreamController<String> _noteStreamController =StreamController<String>.broadcast();
  @override
  void start() {
    // TODO: implement start
  }

  @override
  // TODO: implement noteInput
  Sink get noteInput => _noteStreamController.sink;

  @override
  // TODO: implement noteOutput
  Stream<String> get noteOutput => _noteStreamController.stream;

  @override
  setNotes(String note) {
    if(note.isNotEmpty) {
      noteInput.add(note);
    }
  }

}
abstract class DetailsViewModelInput extends DetailsViewModelOutput {
  Sink get noteInput ;
  setNotes(String note);
}
abstract class DetailsViewModelOutput extends BaseViewModel {
  Stream<String> get noteOutput;
}