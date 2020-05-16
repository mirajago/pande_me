import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pandeme/state/ClickBloc.dart';
import 'package:pandeme/widgets/appbar_widget.dart';
import 'package:pandeme/helpers/colors.dart' as colors;
import 'package:pandeme/widgets/button_filled.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ClickBloc clickBloc = BlocProvider.of<ClickBloc>(context);

    return Scaffold(
      appBar: AppbarWidget(),
      body: BlocBuilder<ClickBloc, ClickState>(
        builder: (context, state) => Container(
          width: MediaQuery.of(context).size.width,
          color: colors.giftGruen,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                  "${state.activeNewsEvent != null ? state.activeNewsEvent["text"] : ""}", style: TextStyle(fontWeight: FontWeight.w600, color: colors.black, fontSize: 20),),
              ButtonFilled(
                  onPressed: () => clickBloc.add(ClickEvent.click),
                  text: "${state.infected} Infected People",
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProviderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClickBloc>(
        create: (context) => ClickBloc(), child: GameScreen());
  }
}
