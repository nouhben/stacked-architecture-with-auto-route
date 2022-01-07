import 'package:stacked/stacked.dart';
import 'package:stacked_architectiure/app/app_router.gr.dart';
import 'package:stacked_architectiure/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    final router = AppRouter();
    await _navigationService.navigateTo(router.routes.first.name);
  }
}
