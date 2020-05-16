import 'package:flutter_bloc/flutter_bloc.dart';

enum ClickEvent {
  click
}

class ClickState {

  int infected;
  ClickState(this.infected);

  increment() => new ClickState(infected + 1);

}


class ClickBloc extends Bloc<ClickEvent, ClickState> {
  @override
  // TODO: implement initialState
  ClickState get initialState => new ClickState(0);

  @override
  Stream<ClickState> mapEventToState(ClickEvent event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case ClickEvent.click:
        yield state.increment();
    }
  }

}