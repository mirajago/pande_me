import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pandeme/state/ClickBloc.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final ClickBloc clickBloc = BlocProvider.of<ClickBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Game")),

      body: BlocBuilder<ClickBloc, ClickState>(

        builder: (context, state) => Stack(
          children: [
            Text("${state.activeNewsEvent}"),
            Center(
              child: RaisedButton(
                onPressed: () => clickBloc.add(ClickEvent.click),
                child: Text("${state.infected} Infected People"),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class ProviderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClickBloc>(
      create: (context) => ClickBloc(),
      child: GameScreen()
    );
  }
}
