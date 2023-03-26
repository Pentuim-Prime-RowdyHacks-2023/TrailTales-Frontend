part of 'api_cubit.dart';

abstract class APIState extends Equatable {
  final Map<String, TaleModel> tales;

  const APIState({required this.tales});

  @override
  List<Object> get props => [tales];
}

class TalesInitialState extends APIState {
  const TalesInitialState({required Map<String, TaleModel> tales})
      : super(tales: tales);
}

class TalesLoadingState extends APIState {
  const TalesLoadingState({required Map<String, TaleModel> tales})
      : super(tales: tales);
}

class TalesLoadedState extends APIState {
  const TalesLoadedState({required Map<String, TaleModel> tales})
      : super(tales: tales);
}

class TalesErrorState extends APIState {
  final String? message;

  const TalesErrorState({required this.message, required Map<String, TaleModel> tales})
      : super(tales: tales);
}
