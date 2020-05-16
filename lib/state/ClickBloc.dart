import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yaml/yaml.dart';

enum ClickEvent {
  click
}

var globalNews = loadYaml('''
events:
  - conditions:
      minInfected: 60
      minTime: 60
    text: Open schools again?
    actions:
      - text: Yes
        action:
          infect: 1000
      - text: No
        action:
          infect: -50
    ''');

class ClickState {

  int infected;

  var news = globalNews;

  var activeNewsEvent;

  ClickState(this.infected) {
    activeNewsEvent = this.news["events"]
  }

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