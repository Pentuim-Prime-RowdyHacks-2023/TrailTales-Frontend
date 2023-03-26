import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:trailtales/models/tale_model.dart';

part 'api_state.dart';

class APICubit extends Cubit<APIState> {
  APICubit() : super(const TalesLoadedState(tales: {}));

  Future<void> loadTales() async {
    Map<String, TaleModel> tales = {};

    for (int i = 0; i < 6; i++) {
      tales[i.toString()] = TaleModel(
        taleID: i.toString(),
        title: "Title $i",
        transcript: "Transcript $i",
        url: "URL $i",
        summary: "Summary $i",
      );
    }

    emit(const TalesLoadingState(tales: {}));

    try {
      emit(TalesLoadedState(tales: tales));
    } catch (error) {
      print(error.toString());
      emit(TalesErrorState(message: "Error loading the files", tales: tales));
    }
    ;
  }

  Future<void> saveTale(TaleModel tale) async {
    Map<String, TaleModel> tales;
    Map<String, String> jsonTale;

    tales = state.tales;

    emit(TalesLoadingState(tales: tales));

    print(tale);

    jsonTale = {
      'taleID': tale.taleID,
      'title': tale.title ?? "",
      'transcript': tale.transcript ?? "",
      'url': tale.url ?? "",
      'summary': tale.summary ?? "",
    };

    try {
      // FIXME: Make this dynamic
      int i = tales.length;
      tales[i.toString()] =TaleModel(
        taleID: i.toString(),
        title: "Title $i",
        transcript: "Transcript $i",
        url: "URL $i",
        summary: "Summary $i",
      );
      emit(TalesLoadedState(tales: tales));
      print("Loaded!");
    } catch (error) {
      print(error);
      emit(TalesErrorState(message: "Error saving blog", tales: tales));
    }
    ;
  }
}
