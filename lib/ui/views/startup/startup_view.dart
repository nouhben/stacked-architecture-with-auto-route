import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architectiure/ui/views/startup/startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('re-build Startup view');
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) {
        print('re-build startup view | builder');

        return Scaffold(
          body: const Center(
            child: Text('you are in startup view'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
        );
      },
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
