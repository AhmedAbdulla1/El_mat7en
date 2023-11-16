import 'dart:async';

class DetailsViewModel extends DetailsViewModelInput{
  final StreamController<String> _noteStreamController =StreamController<String>.broadcast();


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
abstract class DetailsViewModelOutput {
  Stream<String> get noteOutput;
}